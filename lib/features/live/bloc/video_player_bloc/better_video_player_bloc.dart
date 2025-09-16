import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'better_video_player_event.dart';
import 'better_video_player_state.dart';

// BLoC
class BetterVideoPlayerBloc extends Bloc<BetterVideoPlayerEvent, BetterVideoPlayerState> {
  BetterVideoPlayerBloc() : super(VideoPlayerInitial()) {
    on<InitializeVideoPlayer>(_onInitializeVideoPlayer);
    on<DisposeVideoPlayer>(_onDisposeVideoPlayer);
    on<TogglePlayPause>(_onTogglePlayPause);
    on<ToggleFullScreen>(_onToggleFullScreen);
    on<ToggleControlsVisibility>(_onToggleControlsVisibility);
    on<UpdateVideoProgress>(_onUpdateVideoProgress);
  }

  Future<void> _onInitializeVideoPlayer(
      InitializeVideoPlayer event,
      Emitter<BetterVideoPlayerState> emit,
      ) async {
    emit(VideoPlayerLoading());

    try {
      final config = BetterPlayerConfiguration(
        autoPlay: event.autoPlay,
        aspectRatio: event.aspectRatio,
        fit: BoxFit.contain,
        allowedScreenSleep: false,
        fullScreenByDefault: event.fullScreenByDefault,
        controlsConfiguration: const BetterPlayerControlsConfiguration(
          showControlsOnInitialize: false,
          enableFullscreen: false, // We'll handle full-screen manually
          enablePlayPause: false, // We'll handle play/pause manually
          enableProgressBar: false, // We'll handle progress manually
          enableProgressText: false,
          enableSkips: false,
          enableMute: false,
          enableOverflowMenu: false,
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
        event.videoUrl,
        liveStream: event.isLive,
      );

      final controller = BetterPlayerController(config);
      await controller.setupDataSource(dataSource);

      // Listen to video progress
      controller.addEventsListener((event) {
        add(const UpdateVideoProgress());
      });

      emit(VideoPlayerInitialized(
        controller: controller,
        isPlaying: event.autoPlay,
        isFullScreen: event.fullScreenByDefault,
      ));
    } catch (e) {
      emit(VideoPlayerError(errorMessage: 'Failed to initialize video player: $e'));
    }
  }

  Future<void> _onDisposeVideoPlayer(
      DisposeVideoPlayer event,
      Emitter<BetterVideoPlayerState> emit,
      ) async {
    if (state is VideoPlayerInitialized) {
      final controller = (state as VideoPlayerInitialized).controller;
      controller.dispose();
    }
    emit(VideoPlayerInitial());
  }

  void _onTogglePlayPause(
      TogglePlayPause event,
      Emitter<BetterVideoPlayerState> emit,
      ) {
    if (state is VideoPlayerInitialized) {
      final currentState = state as VideoPlayerInitialized;
      final controller = currentState.controller;
      if (currentState.isPlaying) {
        controller.pause();
      } else {
        controller.play();
      }
      emit(currentState.copyWith(isPlaying: !currentState.isPlaying));
    }
  }

  void _onToggleFullScreen(
      ToggleFullScreen event,
      Emitter<BetterVideoPlayerState> emit,
      ) {
    if (state is VideoPlayerInitialized) {
      final currentState = state as VideoPlayerInitialized;
      final controller = currentState.controller;
      if (currentState.isFullScreen) {
        controller.exitFullScreen();
      } else {
        controller.enterFullScreen();
      }
      emit(currentState.copyWith(isFullScreen: !currentState.isFullScreen));
    }
  }

  void _onToggleControlsVisibility(
      ToggleControlsVisibility event,
      Emitter<BetterVideoPlayerState> emit,
      ) {
    if (state is VideoPlayerInitialized) {
      final currentState = state as VideoPlayerInitialized;
      emit(currentState.copyWith(showControls: event.showControls));
    }
  }

  void _onUpdateVideoProgress(
      UpdateVideoProgress event,
      Emitter<BetterVideoPlayerState> emit,
      ) {
    if (state is VideoPlayerInitialized) {
      final currentState = state as VideoPlayerInitialized;
      final controller = currentState.controller;
      emit(currentState.copyWith(
        currentPosition: controller.videoPlayerController?.value.position,
        totalDuration: controller.videoPlayerController?.value.duration,
        isPlaying: controller.isPlaying() ?? false,
      ));
    }
  }
}