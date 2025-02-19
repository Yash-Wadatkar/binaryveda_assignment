part of 'dash_board_cubit.dart';

@freezed
class DashBoardCubitState with _$DashBoardCubitState {
  /// default state of cubit
  const factory DashBoardCubitState.initial({
    @Default(0) int index,
    @Default("") String errorMessage,
    @Default(DataResource.initial()) DataResource<List<UploadDataEntity>> uploadDataEntity,
  }) = _Initial;
}


class DataResource<In> extends Equatable {
  final ResourceState resourceState;
  final In? data;
  final String? errorMessage;

  const DataResource(this.resourceState, this.data, this.errorMessage);

  const DataResource.named({required this.resourceState, this.data, this.errorMessage});

  const DataResource._(this.resourceState, this.data, this.errorMessage);

  const DataResource.initial({In? data}) : this._(ResourceState.initial, data, null);

  const DataResource.loading({In? data}) : this._(ResourceState.loading, null, null);

  const DataResource.success(In? data) : this._(ResourceState.success, data, null);

  const DataResource.error(String? failure) : this._(ResourceState.error, null, failure);

  bool isLoading() => resourceState == ResourceState.loading;

  bool isInitialOrLoading() => isInitial() || isLoading();

  bool isLoadingOrSuccess() => isLoading() || isSuccess();

  bool isInitial() => resourceState == ResourceState.initial;

  bool isSuccess() => resourceState == ResourceState.success;

  bool isError() => resourceState == ResourceState.error;

  bool isDiff(DataResource<In> other) => resourceState != other.resourceState;

  @override
  List<Object?> get props {
    return [resourceState, data, errorMessage];
  }
}

enum ResourceState { initial, loading, success, error }
