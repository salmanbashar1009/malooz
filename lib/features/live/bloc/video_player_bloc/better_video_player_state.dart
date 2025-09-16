// States
import 'package:better_player_plus/better_player_plus.dart';
import 'package:equatable/equatable.dart';

abstract class BetterVideoPlayerState extends
Equatable {
  const BetterVideoPlayerState();

  @override
  List<Object?> get props => [];
}

class VideoPlayerInitial extends BetterVideoPlayerState {}

class VideoPlayerLoading extends BetterVideoPlayerState {}

class VideoPlayerInitialized extends BetterVideoPlayerState {
  final BetterPlayerController controller;
  final bool showControls;
  final Duration? currentPosition;
  final Duration? totalDuration;
  final bool isPlaying;
  final bool isFullScreen;

  const VideoPlayerInitialized({
    required this.controller,
    this.showControls = false,
    this.currentPosition,
    this.totalDuration,
    this.isPlaying = false,
    this.isFullScreen = false,
  });

  VideoPlayerInitialized copyWith({
    BetterPlayerController? controller,
    bool? showControls,
    Duration? currentPosition,
    Duration? totalDuration,
    bool? isPlaying,
    bool? isFullScreen,
  }) {
    return VideoPlayerInitialized(
      controller: controller ?? this.controller,
      showControls: showControls ?? this.showControls,
      currentPosition: currentPosition ?? this.currentPosition,
      totalDuration: totalDuration ?? this.totalDuration,
      isPlaying: isPlaying ?? this.isPlaying,
      isFullScreen: isFullScreen ?? this.isFullScreen,
    );
  }

  @override
  List<Object?> get props => [
    controller,
    showControls,
    currentPosition,
    totalDuration,
    isPlaying,
    isFullScreen,
  ];
}

class VideoPlayerError extends BetterVideoPlayerState {
  final String errorMessage;

  const VideoPlayerError({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}