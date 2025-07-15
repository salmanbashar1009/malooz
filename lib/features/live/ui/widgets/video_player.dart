import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';

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
  late BetterPlayerController _controller;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    try {
      final config = BetterPlayerConfiguration(
        autoPlay: widget.autoPlay,
        aspectRatio: widget.aspectRatio,
        fit: BoxFit.contain,
        allowedScreenSleep: false,
        fullScreenByDefault: widget.fullScreenByDefault,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          showControlsOnInitialize: false,
          enableFullscreen: true,
          enablePlayPause: true,
          enableProgressBar: !widget.isLive,
          enableProgressText: !widget.isLive,
          enableSkips: !widget.isLive,
          enableMute: true,
          enableOverflowMenu: true,
        ),
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage ?? 'Error loading video',
              style: const TextStyle(color: Colors.red),
            ),
          );
        },
      );

      final dataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        widget.videoUrl,
        liveStream: widget.isLive,
      );

      _controller = BetterPlayerController(config);
      await _controller.setupDataSource(dataSource);

      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Failed to initialize video player: $e';
        });
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widget.aspectRatio,
      child: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage != null
          ? Center(child: Text(_errorMessage!, style: const TextStyle(color: Colors.red)))
          : BetterPlayer(controller: _controller),
    );
  }
}