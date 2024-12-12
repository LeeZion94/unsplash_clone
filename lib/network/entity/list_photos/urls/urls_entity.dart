import 'package:freezed_annotation/freezed_annotation.dart';

part 'urls_entity.g.dart';
part 'urls_entity.freezed.dart';

@freezed
class UrlsEntity with _$UrlsEntity {
  const factory UrlsEntity({
    String? raw,
    String? full,
    String? regular,
    String? small,
    String? thumb,
  }) = _UrlsEntity;

  factory UrlsEntity.fromJson(Map<String, dynamic> json) =>
      _$UrlsEntityFromJson(json);
}
