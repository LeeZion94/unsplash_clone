// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_photos_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListPhotosDto _$ListPhotosDtoFromJson(Map<String, dynamic> json) {
  return _ListPhotosDto.fromJson(json);
}

/// @nodoc
mixin _$ListPhotosDto {
  String get id => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get blurHash => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  /// Serializes this ListPhotosDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListPhotosDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListPhotosDtoCopyWith<ListPhotosDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPhotosDtoCopyWith<$Res> {
  factory $ListPhotosDtoCopyWith(
          ListPhotosDto value, $Res Function(ListPhotosDto) then) =
      _$ListPhotosDtoCopyWithImpl<$Res, ListPhotosDto>;
  @useResult
  $Res call(
      {String id,
      int width,
      int height,
      String imageUrl,
      String blurHash,
      String userName});
}

/// @nodoc
class _$ListPhotosDtoCopyWithImpl<$Res, $Val extends ListPhotosDto>
    implements $ListPhotosDtoCopyWith<$Res> {
  _$ListPhotosDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListPhotosDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? imageUrl = null,
    Object? blurHash = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListPhotosDtoImplCopyWith<$Res>
    implements $ListPhotosDtoCopyWith<$Res> {
  factory _$$ListPhotosDtoImplCopyWith(
          _$ListPhotosDtoImpl value, $Res Function(_$ListPhotosDtoImpl) then) =
      __$$ListPhotosDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int width,
      int height,
      String imageUrl,
      String blurHash,
      String userName});
}

/// @nodoc
class __$$ListPhotosDtoImplCopyWithImpl<$Res>
    extends _$ListPhotosDtoCopyWithImpl<$Res, _$ListPhotosDtoImpl>
    implements _$$ListPhotosDtoImplCopyWith<$Res> {
  __$$ListPhotosDtoImplCopyWithImpl(
      _$ListPhotosDtoImpl _value, $Res Function(_$ListPhotosDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPhotosDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? imageUrl = null,
    Object? blurHash = null,
    Object? userName = null,
  }) {
    return _then(_$ListPhotosDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListPhotosDtoImpl implements _ListPhotosDto {
  const _$ListPhotosDtoImpl(
      {required this.id,
      required this.width,
      required this.height,
      required this.imageUrl,
      required this.blurHash,
      required this.userName});

  factory _$ListPhotosDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListPhotosDtoImplFromJson(json);

  @override
  final String id;
  @override
  final int width;
  @override
  final int height;
  @override
  final String imageUrl;
  @override
  final String blurHash;
  @override
  final String userName;

  @override
  String toString() {
    return 'ListPhotosDto(id: $id, width: $width, height: $height, imageUrl: $imageUrl, blurHash: $blurHash, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListPhotosDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, width, height, imageUrl, blurHash, userName);

  /// Create a copy of ListPhotosDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListPhotosDtoImplCopyWith<_$ListPhotosDtoImpl> get copyWith =>
      __$$ListPhotosDtoImplCopyWithImpl<_$ListPhotosDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListPhotosDtoImplToJson(
      this,
    );
  }
}

abstract class _ListPhotosDto implements ListPhotosDto {
  const factory _ListPhotosDto(
      {required final String id,
      required final int width,
      required final int height,
      required final String imageUrl,
      required final String blurHash,
      required final String userName}) = _$ListPhotosDtoImpl;

  factory _ListPhotosDto.fromJson(Map<String, dynamic> json) =
      _$ListPhotosDtoImpl.fromJson;

  @override
  String get id;
  @override
  int get width;
  @override
  int get height;
  @override
  String get imageUrl;
  @override
  String get blurHash;
  @override
  String get userName;

  /// Create a copy of ListPhotosDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListPhotosDtoImplCopyWith<_$ListPhotosDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
