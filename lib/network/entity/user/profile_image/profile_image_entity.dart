import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_entity.g.dart';
part 'profile_image_entity.freezed.dart';

@freezed
class ProfileImageEntity with _$ProfileImageEntity {
  const factory ProfileImageEntity({
    final String? small,
    final String? medium,
    final String? large,
  }) = _ProfileImageEntity;

  factory ProfileImageEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageEntityFromJson(json);
}