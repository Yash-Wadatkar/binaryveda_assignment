import 'package:dashboard_ui_assignment/features/dashboard/data/data_source/remote_data_source.dart';
import 'package:dashboard_ui_assignment/features/dashboard/data/repository_impl/upload_repository_impl.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/repository/upload_data_repository.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/usecase/upload_data_usecase.dart';
import 'package:get_it/get_it.dart';

/// this is the file for dependency injection
GetIt serviceLocator = GetIt.instance;
void initDependencies() {
  // Register the instance of data sources
  serviceLocator
      .registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());

  /// register the instance of repository
  serviceLocator.registerLazySingleton<UploadDataRepository>(() =>
      UploadRepositoryImpl(
          remoteDataSource: serviceLocator<RemoteDataSource>()));

  /// register the instance of usecase
  serviceLocator.registerLazySingleton<UploadDataUsecase>(() =>
      UploadDataUsecase(
          uploadDataRepository: serviceLocator<UploadDataRepository>()));
}
