// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dashboard_ui_assignment/features/dashboard/data/data_source/remote_data_source.dart'
    as _i4;
import 'package:dashboard_ui_assignment/features/dashboard/data/repository_impl/upload_repository_impl.dart'
    as _i493;
import 'package:dashboard_ui_assignment/features/dashboard/domain/repository/upload_data_repository.dart'
    as _i44;
import 'package:dashboard_ui_assignment/features/dashboard/domain/usecase/upload_data_usecase.dart'
    as _i67;
import 'package:dashboard_ui_assignment/features/dashboard/presentation/cubit/dash_board_cubit.dart'
    as _i493;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i4.RemoteDataSource>(() => _i4.RemoteDataSourceImpl());
    gh.lazySingleton<_i44.UploadDataRepository>(() =>
        _i493.UploadRepositoryImpl(
            remoteDataSource: gh<_i4.RemoteDataSource>()));
    gh.lazySingleton<_i67.UploadDataUsecase>(() => _i67.UploadDataUsecase(
        uploadDataRepository: gh<_i44.UploadDataRepository>()));
    gh.factory<_i493.DashBoardCubit>(
        () => _i493.DashBoardCubit(gh<_i67.UploadDataUsecase>()));
    return this;
  }
}
