part of 'dash_board_cubit.dart';

@freezed
class DashBoardCubitState with _$DashBoardCubitState {
  /// default state of cubit
  const factory DashBoardCubitState.initial({@Default(0) int index}) = _Initial;

  /// cubit loading state
  // const factory DashBoardCubitState.loading() = _Loading;

  // /// data successfully load state
  // const factory DashBoardCubitState.dataSuccessfullyLoaded(
  //         {required List<UploadDataEntity> uploadDataEntity}) =
  //     _DataSuccessfullyLoaded;

  // const factory DashBoardCubitState.errorState({required String errorMessage}) =
  //     _Error;
}
