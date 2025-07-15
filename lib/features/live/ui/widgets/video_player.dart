import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/video_player_bloc/better_video_player_bloc.dart';
import '../../bloc/video_player_bloc/better_video_player_event.dart';
import '../../bloc/video_player_bloc/better_video_player_state.dart';

class BetterVideoPlayer extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BetterVideoPlayerBloc()
        ..add(InitializeVideoPlayer(
          videoUrl: videoUrl,
          isLive: isLive,
          aspectRatio: aspectRatio,
          autoPlay: autoPlay,
          fullScreenByDefault: fullScreenByDefault,
        )),
      child: BlocBuilder<BetterVideoPlayerBloc, BetterVideoPlayerState>(
        builder: (context, state) {
          return AspectRatio(
            aspectRatio: aspectRatio,
            child: _buildContent(state),
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
}