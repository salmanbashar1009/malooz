// Events
import 'package:equatable/equatable.dart';

abstract class BetterVideoPlayerEvent extends Equatable {
  const BetterVideoPlayerEvent();

  @override
  List<Object> get props => [];
}

class InitializeVideoPlayer extends BetterVideoPlayerEvent {
  final String videoUrl;
  final bool isLive;
  final double aspectRatio;
  final bool autoPlay;
  final bool fullScreenByDefault;

  const InitializeVideoPlayer({
    required this.videoUrl,
    this.isLive = false,
    this.aspectRatio = 16 / 9,
    this.autoPlay = true,
    this.fullScreenByDefault = false,
  });

  @override
  List<Object> get props => [videoUrl, isLive, aspectRatio, autoPlay, fullScreenByDefault];
}

class DisposeVideoPlayer extends BetterVideoPlayerEvent {
  const DisposeVideoPlayer();
}

class TogglePlayPause extends BetterVideoPlayerEvent {
  const TogglePlayPause();
}

class ToggleFullScreen extends BetterVideoPlayerEvent {
  const ToggleFullScreen();
}

class ToggleControlsVisibility extends BetterVideoPlayerEvent {
  final bool showControls;

  const ToggleControlsVisibility({required this.showControls});

  @override
  List<Object> get props => [showControls];
}

class UpdateVideoProgress extends BetterVideoPlayerEvent {
  const UpdateVideoProgress();
}