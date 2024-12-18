import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_topics_entity.g.dart';
part 'list_topics_entity.freezed.dart';

@freezed
class ListTopicsEntity with _$ListTopicsEntity {
  const factory ListTopicsEntity({
    String? id,
    String? slug,
    String? title,
    String? description,
    bool? featured,
    @JsonKey(name: 'total_photos') int? totalPhotos,
  }) = _ListTopicsEntity;

  factory ListTopicsEntity.fromJson(Map<String, dynamic> json) =>
      _$ListTopicsEntityFromJson(json);
}
