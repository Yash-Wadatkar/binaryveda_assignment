// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dash_board_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashBoardCubitState {
  int get index => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  DataResource<List<UploadDataEntity>> get uploadDataEntity =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, String errorMessage,
            DataResource<List<UploadDataEntity>> uploadDataEntity)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, String errorMessage,
            DataResource<List<UploadDataEntity>> uploadDataEntity)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, String errorMessage,
            DataResource<List<UploadDataEntity>> uploadDataEntity)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DashBoardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashBoardCubitStateCopyWith<DashBoardCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashBoardCubitStateCopyWith<$Res> {
  factory $DashBoardCubitStateCopyWith(
          DashBoardCubitState value, $Res Function(DashBoardCubitState) then) =
      _$DashBoardCubitStateCopyWithImpl<$Res, DashBoardCubitState>;
  @useResult
  $Res call(
      {int index,
      String errorMessage,
      DataResource<List<UploadDataEntity>> uploadDataEntity});
}

/// @nodoc
class _$DashBoardCubitStateCopyWithImpl<$Res, $Val extends DashBoardCubitState>
    implements $DashBoardCubitStateCopyWith<$Res> {
  _$DashBoardCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashBoardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? errorMessage = null,
    Object? uploadDataEntity = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      uploadDataEntity: null == uploadDataEntity
          ? _value.uploadDataEntity
          : uploadDataEntity // ignore: cast_nullable_to_non_nullable
              as DataResource<List<UploadDataEntity>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DashBoardCubitStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String errorMessage,
      DataResource<List<UploadDataEntity>> uploadDataEntity});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DashBoardCubitStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashBoardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? errorMessage = null,
    Object? uploadDataEntity = null,
  }) {
    return _then(_$InitialImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      uploadDataEntity: null == uploadDataEntity
          ? _value.uploadDataEntity
          : uploadDataEntity // ignore: cast_nullable_to_non_nullable
              as DataResource<List<UploadDataEntity>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.index = 0,
      this.errorMessage = "",
      this.uploadDataEntity = const DataResource.initial()});

  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final DataResource<List<UploadDataEntity>> uploadDataEntity;

  @override
  String toString() {
    return 'DashBoardCubitState.initial(index: $index, errorMessage: $errorMessage, uploadDataEntity: $uploadDataEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.uploadDataEntity, uploadDataEntity) ||
                other.uploadDataEntity == uploadDataEntity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, index, errorMessage, uploadDataEntity);

  /// Create a copy of DashBoardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, String errorMessage,
            DataResource<List<UploadDataEntity>> uploadDataEntity)
        initial,
  }) {
    return initial(index, errorMessage, uploadDataEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, String errorMessage,
            DataResource<List<UploadDataEntity>> uploadDataEntity)?
        initial,
  }) {
    return initial?.call(index, errorMessage, uploadDataEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, String errorMessage,
            DataResource<List<UploadDataEntity>> uploadDataEntity)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(index, errorMessage, uploadDataEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashBoardCubitState {
  const factory _Initial(
          {final int index,
          final String errorMessage,
          final DataResource<List<UploadDataEntity>> uploadDataEntity}) =
      _$InitialImpl;

  @override
  int get index;
  @override
  String get errorMessage;
  @override
  DataResource<List<UploadDataEntity>> get uploadDataEntity;

  /// Create a copy of DashBoardCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
