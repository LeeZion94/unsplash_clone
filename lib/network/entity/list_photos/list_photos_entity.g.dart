// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_photos_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListPhotosEntityImpl _$$ListPhotosEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ListPhotosEntityImpl(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      color: json['color'] as String?,
      blurHash: json['blur_hash'] as String?,
      likes: (json['likes'] as num?)?.toInt(),
      likeByUser: json['liked_by_user'] as bool?,
      description: json['description'] as String?,
      user: json['user'] == null
          ? null
          : UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      urls: json['urls'] == null
          ? null
          : UrlsEntity.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListPhotosEntityImplToJson(
        _$ListPhotosEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blur_hash': instance.blurHash,
      'likes': instance.likes,
      'liked_by_user': instance.likeByUser,
      'description': instance.description,
      'user': instance.user,
      'urls': instance.urls,
    };
