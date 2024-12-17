// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_topics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListTopicsDtoImpl _$$ListTopicsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ListTopicsDtoImpl(
      title: json['title'] as String,
      id: json['id'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ListTopicsDtoImplToJson(_$ListTopicsDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'description': instance.description,
    };
