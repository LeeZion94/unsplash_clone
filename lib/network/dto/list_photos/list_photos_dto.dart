import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_photos_dto.g.dart';
part 'list_photos_dto.freezed.dart';

@freezed
class ListPhotosDto with _$ListPhotosDto {
  const factory ListPhotosDto({
    required String id,
    required int width,
    required int height,
    required String imageUrl,
    required String blurHash,
    required String userName,
  }) = _ListPhotosDto;

  factory ListPhotosDto.empty() => const ListPhotosDto(
        id: '',
        width: 0,
        height: 0,
        imageUrl: '',
        blurHash: '',
        userName: '',
      );

  factory ListPhotosDto.fromJson(Map<String, dynamic> json) =>
      _$ListPhotosDtoFromJson(json);
}
