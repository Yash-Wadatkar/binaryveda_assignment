import 'package:fpdart/fpdart.dart';
import 'package:dashboard_ui_assignment/core/utils/failure.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/entity/upload_data_entity.dart';

/// repository to get upload data

abstract interface class UploadDataRepository {
  Future<Either<Failures, List<UploadDataEntity>>> getUploadDataRepository();
}
