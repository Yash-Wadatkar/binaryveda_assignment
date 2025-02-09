// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'upload_data_model.dart';

class UploadDataModelMapper extends ClassMapperBase<UploadDataModel> {
  UploadDataModelMapper._();

  static UploadDataModelMapper? _instance;
  static UploadDataModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UploadDataModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UploadDataModel';

  static int _$albumId(UploadDataModel v) => v.albumId;
  static const Field<UploadDataModel, int> _f$albumId =
      Field('albumId', _$albumId);
  static int _$id(UploadDataModel v) => v.id;
  static const Field<UploadDataModel, int> _f$id = Field('id', _$id);
  static String _$title(UploadDataModel v) => v.title;
  static const Field<UploadDataModel, String> _f$title =
      Field('title', _$title);
  static String _$url(UploadDataModel v) => v.url;
  static const Field<UploadDataModel, String> _f$url = Field('url', _$url);
  static String _$thumbnailUrl(UploadDataModel v) => v.thumbnailUrl;
  static const Field<UploadDataModel, String> _f$thumbnailUrl =
      Field('thumbnailUrl', _$thumbnailUrl);

  @override
  final MappableFields<UploadDataModel> fields = const {
    #albumId: _f$albumId,
    #id: _f$id,
    #title: _f$title,
    #url: _f$url,
    #thumbnailUrl: _f$thumbnailUrl,
  };

  static UploadDataModel _instantiate(DecodingData data) {
    return UploadDataModel(
        albumId: data.dec(_f$albumId),
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        url: data.dec(_f$url),
        thumbnailUrl: data.dec(_f$thumbnailUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static UploadDataModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UploadDataModel>(map);
  }

  static UploadDataModel fromJson(String json) {
    return ensureInitialized().decodeJson<UploadDataModel>(json);
  }
}

mixin UploadDataModelMappable {
  String toJson() {
    return UploadDataModelMapper.ensureInitialized()
        .encodeJson<UploadDataModel>(this as UploadDataModel);
  }

  Map<String, dynamic> toMap() {
    return UploadDataModelMapper.ensureInitialized()
        .encodeMap<UploadDataModel>(this as UploadDataModel);
  }

  UploadDataModelCopyWith<UploadDataModel, UploadDataModel, UploadDataModel>
      get copyWith => _UploadDataModelCopyWithImpl(
          this as UploadDataModel, $identity, $identity);
  @override
  String toString() {
    return UploadDataModelMapper.ensureInitialized()
        .stringifyValue(this as UploadDataModel);
  }

  @override
  bool operator ==(Object other) {
    return UploadDataModelMapper.ensureInitialized()
        .equalsValue(this as UploadDataModel, other);
  }

  @override
  int get hashCode {
    return UploadDataModelMapper.ensureInitialized()
        .hashValue(this as UploadDataModel);
  }
}

extension UploadDataModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UploadDataModel, $Out> {
  UploadDataModelCopyWith<$R, UploadDataModel, $Out> get $asUploadDataModel =>
      $base.as((v, t, t2) => _UploadDataModelCopyWithImpl(v, t, t2));
}

abstract class UploadDataModelCopyWith<$R, $In extends UploadDataModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? albumId,
      int? id,
      String? title,
      String? url,
      String? thumbnailUrl});
  UploadDataModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UploadDataModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UploadDataModel, $Out>
    implements UploadDataModelCopyWith<$R, UploadDataModel, $Out> {
  _UploadDataModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UploadDataModel> $mapper =
      UploadDataModelMapper.ensureInitialized();
  @override
  $R call(
          {int? albumId,
          int? id,
          String? title,
          String? url,
          String? thumbnailUrl}) =>
      $apply(FieldCopyWithData({
        if (albumId != null) #albumId: albumId,
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (url != null) #url: url,
        if (thumbnailUrl != null) #thumbnailUrl: thumbnailUrl
      }));
  @override
  UploadDataModel $make(CopyWithData data) => UploadDataModel(
      albumId: data.get(#albumId, or: $value.albumId),
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      url: data.get(#url, or: $value.url),
      thumbnailUrl: data.get(#thumbnailUrl, or: $value.thumbnailUrl));

  @override
  UploadDataModelCopyWith<$R2, UploadDataModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UploadDataModelCopyWithImpl($value, $cast, t);
}
