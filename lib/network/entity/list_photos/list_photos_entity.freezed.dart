// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_photos_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListPhotosEntity _$ListPhotosEntityFromJson(Map<String, dynamic> json) {
  return _ListPhotosEntity.fromJson(json);
}

/// @nodoc
mixin _$ListPhotosEntity {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'blur_hash')
  String? get blurHash => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'liked_by_user')
  bool? get likeByUser => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  UserEntity? get user => throw _privateConstructorUsedError;
  UrlsEntity? get urls => throw _privateConstructorUsedError;

  /// Serializes this ListPhotosEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListPhotosEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListPhotosEntityCopyWith<ListPhotosEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPhotosEntityCopyWith<$Res> {
  factory $ListPhotosEntityCopyWith(
          ListPhotosEntity value, $Res Function(ListPhotosEntity) then) =
      _$ListPhotosEntityCopyWithImpl<$Res, ListPhotosEntity>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      int? width,
      int? height,
      String? color,
      @JsonKey(name: 'blur_hash') String? blurHash,
      int? likes,
      @JsonKey(name: 'liked_by_user') bool? likeByUser,
      String? description,
      UserEntity? user,
      UrlsEntity? urls});

  $UserEntityCopyWith<$Res>? get user;
  $UrlsEntityCopyWith<$Res>? get urls;
}

/// @nodoc
class _$ListPhotosEntityCopyWithImpl<$Res, $Val extends ListPhotosEntity>
    implements $ListPhotosEntityCopyWith<$Res> {
  _$ListPhotosEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListPhotosEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? likes = freezed,
    Object? likeByUser = freezed,
    Object? description = freezed,
    Object? user = freezed,
    Object? urls = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likeByUser: freezed == likeByUser
          ? _value.likeByUser
          : likeByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as UrlsEntity?,
    ) as $Val);
  }

  /// Create a copy of ListPhotosEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ListPhotosEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrlsEntityCopyWith<$Res>? get urls {
    if (_value.urls == null) {
      return null;
    }

    return $UrlsEntityCopyWith<$Res>(_value.urls!, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListPhotosEntityImplCopyWith<$Res>
    implements $ListPhotosEntityCopyWith<$Res> {
  factory _$$ListPhotosEntityImplCopyWith(_$ListPhotosEntityImpl value,
          $Res Function(_$ListPhotosEntityImpl) then) =
      __$$ListPhotosEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      int? width,
      int? height,
      String? color,
      @JsonKey(name: 'blur_hash') String? blurHash,
      int? likes,
      @JsonKey(name: 'liked_by_user') bool? likeByUser,
      String? description,
      UserEntity? user,
      UrlsEntity? urls});

  @override
  $UserEntityCopyWith<$Res>? get user;
  @override
  $UrlsEntityCopyWith<$Res>? get urls;
}

/// @nodoc
class __$$ListPhotosEntityImplCopyWithImpl<$Res>
    extends _$ListPhotosEntityCopyWithImpl<$Res, _$ListPhotosEntityImpl>
    implements _$$ListPhotosEntityImplCopyWith<$Res> {
  __$$ListPhotosEntityImplCopyWithImpl(_$ListPhotosEntityImpl _value,
      $Res Function(_$ListPhotosEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPhotosEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? likes = freezed,
    Object? likeByUser = freezed,
    Object? description = freezed,
    Object? user = freezed,
    Object? urls = freezed,
  }) {
    return _then(_$ListPhotosEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likeByUser: freezed == likeByUser
          ? _value.likeByUser
          : likeByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as UrlsEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListPhotosEntityImpl implements _ListPhotosEntity {
  const _$ListPhotosEntityImpl(
      {this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.width,
      this.height,
      this.color,
      @JsonKey(name: 'blur_hash') this.blurHash,
      this.likes,
      @JsonKey(name: 'liked_by_user') this.likeByUser,
      this.description,
      this.user,
      this.urls});

  factory _$ListPhotosEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListPhotosEntityImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? color;
  @override
  @JsonKey(name: 'blur_hash')
  final String? blurHash;
  @override
  final int? likes;
  @override
  @JsonKey(name: 'liked_by_user')
  final bool? likeByUser;
  @override
  final String? description;
  @override
  final UserEntity? user;
  @override
  final UrlsEntity? urls;

  @override
  String toString() {
    return 'ListPhotosEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, width: $width, height: $height, color: $color, blurHash: $blurHash, likes: $likes, likeByUser: $likeByUser, description: $description, user: $user, urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListPhotosEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.likeByUser, likeByUser) ||
                other.likeByUser == likeByUser) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.urls, urls) || other.urls == urls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, width,
      height, color, blurHash, likes, likeByUser, description, user, urls);

  /// Create a copy of ListPhotosEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListPhotosEntityImplCopyWith<_$ListPhotosEntityImpl> get copyWith =>
      __$$ListPhotosEntityImplCopyWithImpl<_$ListPhotosEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListPhotosEntityImplToJson(
      this,
    );
  }
}

abstract class _ListPhotosEntity implements ListPhotosEntity {
  const factory _ListPhotosEntity(
      {final String? id,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final int? width,
      final int? height,
      final String? color,
      @JsonKey(name: 'blur_hash') final String? blurHash,
      final int? likes,
      @JsonKey(name: 'liked_by_user') final bool? likeByUser,
      final String? description,
      final UserEntity? user,
      final UrlsEntity? urls}) = _$ListPhotosEntityImpl;

  factory _ListPhotosEntity.fromJson(Map<String, dynamic> json) =
      _$ListPhotosEntityImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get color;
  @override
  @JsonKey(name: 'blur_hash')
  String? get blurHash;
  @override
  int? get likes;
  @override
  @JsonKey(name: 'liked_by_user')
  bool? get likeByUser;
  @override
  String? get description;
  @override
  UserEntity? get user;
  @override
  UrlsEntity? get urls;

  /// Create a copy of ListPhotosEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListPhotosEntityImplCopyWith<_$ListPhotosEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
