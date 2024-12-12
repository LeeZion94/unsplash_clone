import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_clone/network/entity/list_photos/urls/urls_entity.dart';
import 'package:unsplash_clone/network/entity/user/user_entity.dart';

part 'list_photos_entity.g.dart';
part 'list_photos_entity.freezed.dart';

@freezed
class ListPhotosEntity with _$ListPhotosEntity {
  const factory ListPhotosEntity({
    String? id,
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
    UrlsEntity? urls,
  }) = _ListPhotosEntity;

  factory ListPhotosEntity.fromJson(Map<String, dynamic> json) =>
      _$ListPhotosEntityFromJson(json);
}
