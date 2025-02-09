import 'package:dashboard_ui_assignment/core/utils/failure.dart';
import 'package:dashboard_ui_assignment/features/dashboard/data/data_source/remote_data_source.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/entity/upload_data_entity.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/repository/upload_data_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/server_exception.dart';

/// implementation of upload data repository
class UploadRepositoryImpl implements UploadDataRepository {
  final RemoteDataSource remoteDataSource;

  UploadRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failures, List<UploadDataEntity>>>
      getUploadDataRepository() async {
    try {
      final upladedData = await remoteDataSource.getUploadData();
      return right(upladedData);
    } on ServerException catch (e) {
      return left(Failures(e.message));
    }
  }
}
