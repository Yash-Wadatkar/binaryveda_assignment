import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/entity/upload_data_entity.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/usecase/upload_data_usecase.dart';
import 'package:equatable/equatable.dart';
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
    emit(state.copyWith(uploadDataEntity: DataResource.loading()));
    final data = await uploadDataUsecase.getUploadDataUsecase();
    data.fold(
      (l) {
        emit(state.copyWith(uploadDataEntity: DataResource.error(l.message)));
        /// if failure retrun failure state
      },
      (r) {
        emit(state.copyWith(uploadDataEntity: DataResource.success(r)));
        /// if success retrun success state
      },
    );
  }

  /// method to toggle tabbar
  FutureOr<void> toggleTabBar({required int index}) {
    emit(state.copyWith(index: index));
  }
}
