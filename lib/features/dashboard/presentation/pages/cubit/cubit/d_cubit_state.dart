part of 'd_cubit_cubit.dart';

@freezed
class DCubitState with _$DCubitState {
  const factory DCubitState.initial({
    @Default("Savings") String selectedTab,
  }) = _Initial;
}
