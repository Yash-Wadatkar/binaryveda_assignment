import 'package:dashboard_ui_assignment/core/utils/failure.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/entity/upload_data_entity.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/repository/upload_data_repository.dart';
import 'package:fpdart/fpdart.dart';

/// use case to get uploaded data
class UploadDataUsecase {
  final UploadDataRepository uploadDataRepository;

  UploadDataUsecase({required this.uploadDataRepository});

  Future<Either<Failures, List<UploadDataEntity>>> getUploadDataUsecase() async {
    return await uploadDataRepository.getUploadDataRepository();
  }
}
