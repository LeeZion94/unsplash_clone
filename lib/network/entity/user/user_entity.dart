import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_clone/network/entity/user/profile_image/profile_image_entity.dart';

part 'user_entity.g.dart';
part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? id,
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
    @JsonKey(name: 'profile_image') ProfileImageEntity? profileImage,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
