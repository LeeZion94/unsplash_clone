// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get userName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'portfolio_url')
  String? get portfolioUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes')
  int? get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_photos')
  int? get totalPhotos => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_collections')
  int? get totalCollections => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_username')
  String? get instagramUserName => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_username')
  String? get twitterUserName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  ProfileImageEntity? get profileImage => throw _privateConstructorUsedError;

  /// Serializes this UserEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'username') String? userName,
      String? name,
      @JsonKey(name: 'portfolio_url') String? portfolioUrl,
      String? bio,
      String? location,
      @JsonKey(name: 'total_likes') int? totalLikes,
      @JsonKey(name: 'total_photos') int? totalPhotos,
      @JsonKey(name: 'total_collections') int? totalCollections,
      @JsonKey(name: 'instagram_username') String? instagramUserName,
      @JsonKey(name: 'twitter_username') String? twitterUserName,
      @JsonKey(name: 'profile_image') ProfileImageEntity? profileImage});

  $ProfileImageEntityCopyWith<$Res>? get profileImage;
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? name = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? totalLikes = freezed,
    Object? totalPhotos = freezed,
    Object? totalCollections = freezed,
    Object? instagramUserName = freezed,
    Object? twitterUserName = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCollections: freezed == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int?,
      instagramUserName: freezed == instagramUserName
          ? _value.instagramUserName
          : instagramUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUserName: freezed == twitterUserName
          ? _value.twitterUserName
          : twitterUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImageEntity?,
    ) as $Val);
  }

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileImageEntityCopyWith<$Res>? get profileImage {
    if (_value.profileImage == null) {
      return null;
    }

    return $ProfileImageEntityCopyWith<$Res>(_value.profileImage!, (value) {
      return _then(_value.copyWith(profileImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserEntityImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityImplCopyWith(
          _$UserEntityImpl value, $Res Function(_$UserEntityImpl) then) =
      __$$UserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'username') String? userName,
      String? name,
      @JsonKey(name: 'portfolio_url') String? portfolioUrl,
      String? bio,
      String? location,
      @JsonKey(name: 'total_likes') int? totalLikes,
      @JsonKey(name: 'total_photos') int? totalPhotos,
      @JsonKey(name: 'total_collections') int? totalCollections,
      @JsonKey(name: 'instagram_username') String? instagramUserName,
      @JsonKey(name: 'twitter_username') String? twitterUserName,
      @JsonKey(name: 'profile_image') ProfileImageEntity? profileImage});

  @override
  $ProfileImageEntityCopyWith<$Res>? get profileImage;
}

/// @nodoc
class __$$UserEntityImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityImpl>
    implements _$$UserEntityImplCopyWith<$Res> {
  __$$UserEntityImplCopyWithImpl(
      _$UserEntityImpl _value, $Res Function(_$UserEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? name = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? totalLikes = freezed,
    Object? totalPhotos = freezed,
    Object? totalCollections = freezed,
    Object? instagramUserName = freezed,
    Object? twitterUserName = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$UserEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCollections: freezed == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int?,
      instagramUserName: freezed == instagramUserName
          ? _value.instagramUserName
          : instagramUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUserName: freezed == twitterUserName
          ? _value.twitterUserName
          : twitterUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImageEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntityImpl implements _UserEntity {
  const _$UserEntityImpl(
      {this.id,
      @JsonKey(name: 'username') this.userName,
      this.name,
      @JsonKey(name: 'portfolio_url') this.portfolioUrl,
      this.bio,
      this.location,
      @JsonKey(name: 'total_likes') this.totalLikes,
      @JsonKey(name: 'total_photos') this.totalPhotos,
      @JsonKey(name: 'total_collections') this.totalCollections,
      @JsonKey(name: 'instagram_username') this.instagramUserName,
      @JsonKey(name: 'twitter_username') this.twitterUserName,
      @JsonKey(name: 'profile_image') this.profileImage});

  factory _$UserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntityImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'username')
  final String? userName;
  @override
  final String? name;
  @override
  @JsonKey(name: 'portfolio_url')
  final String? portfolioUrl;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  @JsonKey(name: 'total_likes')
  final int? totalLikes;
  @override
  @JsonKey(name: 'total_photos')
  final int? totalPhotos;
  @override
  @JsonKey(name: 'total_collections')
  final int? totalCollections;
  @override
  @JsonKey(name: 'instagram_username')
  final String? instagramUserName;
  @override
  @JsonKey(name: 'twitter_username')
  final String? twitterUserName;
  @override
  @JsonKey(name: 'profile_image')
  final ProfileImageEntity? profileImage;

  @override
  String toString() {
    return 'UserEntity(id: $id, userName: $userName, name: $name, portfolioUrl: $portfolioUrl, bio: $bio, location: $location, totalLikes: $totalLikes, totalPhotos: $totalPhotos, totalCollections: $totalCollections, instagramUserName: $instagramUserName, twitterUserName: $twitterUserName, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.portfolioUrl, portfolioUrl) ||
                other.portfolioUrl == portfolioUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.totalPhotos, totalPhotos) ||
                other.totalPhotos == totalPhotos) &&
            (identical(other.totalCollections, totalCollections) ||
                other.totalCollections == totalCollections) &&
            (identical(other.instagramUserName, instagramUserName) ||
                other.instagramUserName == instagramUserName) &&
            (identical(other.twitterUserName, twitterUserName) ||
                other.twitterUserName == twitterUserName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      name,
      portfolioUrl,
      bio,
      location,
      totalLikes,
      totalPhotos,
      totalCollections,
      instagramUserName,
      twitterUserName,
      profileImage);

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      __$$UserEntityImplCopyWithImpl<_$UserEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEntityImplToJson(
      this,
    );
  }
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {final String? id,
      @JsonKey(name: 'username') final String? userName,
      final String? name,
      @JsonKey(name: 'portfolio_url') final String? portfolioUrl,
      final String? bio,
      final String? location,
      @JsonKey(name: 'total_likes') final int? totalLikes,
      @JsonKey(name: 'total_photos') final int? totalPhotos,
      @JsonKey(name: 'total_collections') final int? totalCollections,
      @JsonKey(name: 'instagram_username') final String? instagramUserName,
      @JsonKey(name: 'twitter_username') final String? twitterUserName,
      @JsonKey(name: 'profile_image')
      final ProfileImageEntity? profileImage}) = _$UserEntityImpl;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$UserEntityImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'username')
  String? get userName;
  @override
  String? get name;
  @override
  @JsonKey(name: 'portfolio_url')
  String? get portfolioUrl;
  @override
  String? get bio;
  @override
  String? get location;
  @override
  @JsonKey(name: 'total_likes')
  int? get totalLikes;
  @override
  @JsonKey(name: 'total_photos')
  int? get totalPhotos;
  @override
  @JsonKey(name: 'total_collections')
  int? get totalCollections;
  @override
  @JsonKey(name: 'instagram_username')
  String? get instagramUserName;
  @override
  @JsonKey(name: 'twitter_username')
  String? get twitterUserName;
  @override
  @JsonKey(name: 'profile_image')
  ProfileImageEntity? get profileImage;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
