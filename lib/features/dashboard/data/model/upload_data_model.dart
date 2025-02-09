import 'package:dart_mappable/dart_mappable.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/entity/upload_data_entity.dart';
part 'upload_data_model.mapper.dart';

@MappableClass()
class UploadDataModel extends UploadDataEntity with UploadDataModelMappable {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  UploadDataModel(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl})
      : super(
            albumId: albumId,
            id: id,
            title: title,
            url: url,
            thumbnailUrl: thumbnailUrl);
}
