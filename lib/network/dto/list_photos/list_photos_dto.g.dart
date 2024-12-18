// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_photos_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListPhotosDtoImpl _$$ListPhotosDtoImplFromJson(Map<String, dynamic> json) =>
    _$ListPhotosDtoImpl(
      id: json['id'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      blurHash: json['blurHash'] as String,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$$ListPhotosDtoImplToJson(_$ListPhotosDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'imageUrl': instance.imageUrl,
      'blurHash': instance.blurHash,
      'userName': instance.userName,
    };
