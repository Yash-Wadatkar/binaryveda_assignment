import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'd_cubit_state.dart';
part 'd_cubit_cubit.freezed.dart';

class DCubitCubit extends Cubit<DCubitState> {
  DCubitCubit() : super(DCubitState.initial());
}


