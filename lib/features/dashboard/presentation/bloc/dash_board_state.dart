part of 'dash_board_bloc.dart';

@immutable
sealed class DashBoardState {}

/// dashboard listner state
final class DashBoardListnerState extends DashBoardState {}

/// initial state of the dashboard
final class DashBoardInitial extends DashBoardState {}

/// loading state of the dashboard
final class DashBoardLoadingState extends DashBoardState {}

/// error state of the dashboard
final class DashBoardFailureState extends DashBoardListnerState {
  final String errorMessage;

  DashBoardFailureState({required this.errorMessage});
}

/// success state of the dashboard (state to show fetch image )
final class DashBoardDataSuccessfullyFetchedState extends DashBoardState {
  final List<UploadDataEntity> uploadDataEntity;

  DashBoardDataSuccessfullyFetchedState({required this.uploadDataEntity});
}

/// state to toggle tababr
final class ToggleTabBarState extends DashBoardState {
  final int index;

  ToggleTabBarState({required this.index});
}
