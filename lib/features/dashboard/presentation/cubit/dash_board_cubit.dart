import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/entity/upload_data_entity.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/usecase/upload_data_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dash_board_state.dart';
part 'dash_board_cubit.freezed.dart';

@Injectable()
class DashBoardCubit extends Cubit<DashBoardCubitState> {
  final UploadDataUsecase uploadDataUsecase;
  DashBoardCubit(this.uploadDataUsecase) : super(DashBoardCubitState.initial());

  /// method to get photos on dashboard
  FutureOr<void> loadDashBoardPhotos() async {
    // emit(DashBoardCubitState.loading());
    final data = await uploadDataUsecase.getUploadDataUsecase();
    data.fold(
      (l) {
        /// if failure retrun failure state
        emit(DashBoardCubitState.errorState(errorMessage: l.message));
      },
      (r) {
        /// if success retrun success state
        emit(DashBoardCubitState.dataSuccessfullyLoaded(uploadDataEntity: r));
      },
    );
  }

  /// method to toggle tabbar
  FutureOr<void> toggleTabBar({required int index}) {
    emit(state.copyWith(index: index));
  }
}
