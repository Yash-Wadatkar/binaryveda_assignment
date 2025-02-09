/// this is the entity model for the data we are fetching
class UploadDataEntity {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  UploadDataEntity(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});
}
