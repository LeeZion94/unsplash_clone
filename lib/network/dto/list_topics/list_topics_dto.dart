import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_topics_dto.g.dart';
part 'list_topics_dto.freezed.dart';

@freezed
class ListTopicsDto with _$ListTopicsDto {
  const factory ListTopicsDto({
    required String title,
    required String id,
    required String description,
  }) = _ListTopicsDto;

  factory ListTopicsDto.fromJson(Map<String, dynamic> json) =>
      _$ListTopicsDtoFromJson(json);
}
