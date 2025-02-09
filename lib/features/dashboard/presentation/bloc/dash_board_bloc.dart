import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dashboard_ui_assignment/core/dependency_injection_container/dependency_injection_container.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/entity/upload_data_entity.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/usecase/upload_data_usecase.dart';
import 'package:meta/meta.dart';

part 'dash_board_event.dart';
part 'dash_board_state.dart';

class DashBoardBloc extends Bloc<DashBoardEvent, DashBoardState> {
  DashBoardBloc() : super(DashBoardInitial()) {
    /// event handler to  load upload images on dash board
    on<LoadDashBoardPhotosEvent>(loadDashBoardPhotosEvent);

    /// event handler to toggle tabbar
    on<ToggleTabBarEvent>(toggleTabBarEvent);
  }

  FutureOr<void> loadDashBoardPhotosEvent(
      LoadDashBoardPhotosEvent event, Emitter emit) async {
    emit(DashBoardLoadingState());
    final data =
        await serviceLocator<UploadDataUsecase>().getUploadDataUsecase();
    data.fold(
      (l) {
        /// if failure retrun failure state
        emit(DashBoardFailureState(errorMessage: l.message));
      },
      (r) {
        /// if success retrun success state
        emit(DashBoardDataSuccessfullyFetchedState(uploadDataEntity: r));
      },
    );
  }

  FutureOr<void> toggleTabBarEvent(ToggleTabBarEvent event, Emitter emit) {
    emit(ToggleTabBarState(index: event.index));
  }
}
