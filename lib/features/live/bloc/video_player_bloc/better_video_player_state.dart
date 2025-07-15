// States
import 'package:better_player_plus/better_player_plus.dart';
import 'package:equatable/equatable.dart';

abstract class BetterVideoPlayerState extends Equatable {
  const BetterVideoPlayerState();

  @override
  List<Object?> get props => [];
}

class VideoPlayerInitial extends BetterVideoPlayerState {}

class VideoPlayerLoading extends BetterVideoPlayerState {}

class VideoPlayerInitialized extends BetterVideoPlayerState {
  final BetterPlayerController controller;

  const VideoPlayerInitialized({required this.controller});

  @override
  List<Object?> get props => [controller];
}

class VideoPlayerError extends BetterVideoPlayerState {
  final String errorMessage;

  const VideoPlayerError({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}