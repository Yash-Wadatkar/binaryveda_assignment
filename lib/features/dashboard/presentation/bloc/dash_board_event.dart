part of 'dash_board_bloc.dart';

@immutable
sealed class DashBoardEvent {}

/// event to load uploaded photos
final class LoadDashBoardPhotosEvent extends DashBoardEvent {}

/// event to toggle tababr
final class ToggleTabBarEvent extends DashBoardEvent {
  final int index;

  ToggleTabBarEvent({required this.index});
}
