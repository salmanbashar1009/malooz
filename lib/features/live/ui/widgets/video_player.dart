import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/video_player_bloc/better_video_player_bloc.dart';
import '../../bloc/video_player_bloc/better_video_player_event.dart';
import '../../bloc/video_player_bloc/better_video_player_state.dart';

import 'dart:async';

class BetterVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final bool isLive;
  final double aspectRatio;
  final bool autoPlay;
  final bool fullScreenByDefault;

  const BetterVideoPlayer({
    required this.videoUrl,
    this.isLive = false,
    this.aspectRatio = 16 / 9,
    this.autoPlay = true,
    this.fullScreenByDefault = false,
    super.key,
  });

  @override
  State<BetterVideoPlayer> createState() => _BetterVideoPlayerState();
}

class _BetterVideoPlayerState extends State<BetterVideoPlayer> {
  Timer? _hideControlsTimer;

  @override
  void dispose() {
    _hideControlsTimer?.cancel();
    super.dispose();
  }

  void _startHideControlsTimer(BuildContext context) {
    _hideControlsTimer?.cancel();
    _hideControlsTimer = Timer(const Duration(seconds: 10), () {
      context.read<BetterVideoPlayerBloc>().add(const ToggleControlsVisibility(showControls: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BetterVideoPlayerBloc()
        ..add(InitializeVideoPlayer(
          videoUrl: widget.videoUrl,
          isLive: widget.isLive,
          aspectRatio: widget.aspectRatio,
          autoPlay: widget.autoPlay,
          fullScreenByDefault: widget.fullScreenByDefault,
        )),
      child: BlocBuilder<BetterVideoPlayerBloc, BetterVideoPlayerState>(
        builder: (context, state) {
          return AspectRatio(
            aspectRatio: widget.aspectRatio,
            child: Stack(
              children: [
                _buildContent(state),
                if (state is VideoPlayerInitialized && !widget.isLive)
                  GestureDetector(
                    onTap: () {
                      context.read<BetterVideoPlayerBloc>().add(const ToggleControlsVisibility(showControls: true));
                      _startHideControlsTimer(context);
                    },
                    child: _buildControls(context, state),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent(BetterVideoPlayerState state) {
    if (state is VideoPlayerLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is VideoPlayerError) {
      return Center(
        child: Text(
          state.errorMessage,
          style: const TextStyle(color: Colors.red),
        ),
      );
    } else if (state is VideoPlayerInitialized) {
      return BetterPlayer(controller: state.controller);
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

  Widget _buildControls(BuildContext context, VideoPlayerInitialized state) {
    return AnimatedOpacity(
      opacity: state.showControls ? 0.7 : 0.0,
      duration: const Duration(milliseconds: 300),
      child: Stack(
        children: [
          // Centered Play/Pause Button
          Center(
            child: IconButton(
              icon: Icon(
                state.isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
                size: 64,
                color: Colors.white.withAlpha(200),
              ),
              onPressed: () {
                context.read<BetterVideoPlayerBloc>().add(const TogglePlayPause());
                _startHideControlsTimer(context);
              },
            ),
          ),
          // Bottom Duration Tracker and Full-Screen Button
          if (state.totalDuration != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    // Current Position
                    Text(
                      _formatDuration(state.currentPosition ?? Duration.zero),
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(width: 8),
                    // Progress Bar
                    Expanded(
                      child: LinearProgressIndicator(
                        value: state.currentPosition != null && state.totalDuration != null
                            ? state.currentPosition!.inMilliseconds / state.totalDuration!.inMilliseconds
                            : 0.0,
                        backgroundColor: Colors.grey,
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Total Duration
                    Text(
                      _formatDuration(state.totalDuration!),
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(width: 8),
                    // Full-Screen Button
                    IconButton(
                      icon: Icon(
                        state.isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        context.read<BetterVideoPlayerBloc>().add(const ToggleFullScreen());
                        _startHideControlsTimer(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}