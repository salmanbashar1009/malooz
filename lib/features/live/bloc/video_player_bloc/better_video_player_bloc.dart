// BLoC
import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'better_video_player_event.dart';
import 'better_video_player_state.dart';

class BetterVideoPlayerBloc extends Bloc<BetterVideoPlayerEvent, BetterVideoPlayerState> {
  BetterVideoPlayerBloc() : super(VideoPlayerInitial()) {
    on<InitializeVideoPlayer>(_onInitializeVideoPlayer);
    on<DisposeVideoPlayer>(_onDisposeVideoPlayer);
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
        controlsConfiguration: BetterPlayerControlsConfiguration(
          showControlsOnInitialize: false,
          enableFullscreen: true,
          enablePlayPause: true,
          enableProgressBar: !event.isLive,
          enableProgressText: !event.isLive,
          enableSkips: !event.isLive,
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
        event.videoUrl,
        liveStream: event.isLive,
      );

      final controller = BetterPlayerController(config);
      await controller.setupDataSource(dataSource);

      emit(VideoPlayerInitialized(controller: controller));
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
}