// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_topics_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListTopicsEntityImpl _$$ListTopicsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ListTopicsEntityImpl(
      id: json['id'] as String?,
      slug: json['slug'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      featured: json['featured'] as bool?,
      totalPhotos: (json['total_photos'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ListTopicsEntityImplToJson(
        _$ListTopicsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'title': instance.title,
      'description': instance.description,
      'featured': instance.featured,
      'total_photos': instance.totalPhotos,
    };
