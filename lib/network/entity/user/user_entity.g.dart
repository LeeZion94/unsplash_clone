// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      id: json['id'] as String?,
      userName: json['username'] as String?,
      name: json['name'] as String?,
      portfolioUrl: json['portfolio_url'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      totalLikes: (json['total_likes'] as num?)?.toInt(),
      totalPhotos: (json['total_photos'] as num?)?.toInt(),
      totalCollections: (json['total_collections'] as num?)?.toInt(),
      instagramUserName: json['instagram_username'] as String?,
      twitterUserName: json['twitter_username'] as String?,
      profileImage: json['profile_image'] == null
          ? null
          : ProfileImageEntity.fromJson(
              json['profile_image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.userName,
      'name': instance.name,
      'portfolio_url': instance.portfolioUrl,
      'bio': instance.bio,
      'location': instance.location,
      'total_likes': instance.totalLikes,
      'total_photos': instance.totalPhotos,
      'total_collections': instance.totalCollections,
      'instagram_username': instance.instagramUserName,
      'twitter_username': instance.twitterUserName,
      'profile_image': instance.profileImage,
    };
