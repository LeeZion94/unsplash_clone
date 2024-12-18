import 'package:unsplash_clone/network/dto/list_photos/list_photos_dto.dart';
import 'package:unsplash_clone/network/entity/list_photos/list_photos_entity.dart';
import 'package:unsplash_clone/util/mapper.dart';

class ListPhotosDtoMapper implements Mapper<ListPhotosEntity, ListPhotosDto> {
  final _defaultBlurHash = 'LEHV6nWB2yk8pyo0adR*.7kCMdnj';

  @override
  ListPhotosDto mapToDto(ListPhotosEntity? entity) {
    if (entity == null) {
      throw Exception('entity is Null');
    }

    final id = entity.id;
    if (id == null) {
      throw Exception('id is Null');
    }

    final width = entity.width;
    if (width == null) {
      throw Exception('width is Null');
    }

    final height = entity.height;
    if (height == null) {
      throw Exception('height is Null');
    }

    final imageUrl = entity.urls?.raw;
    if (imageUrl == null) {
      throw Exception('imageUrl is Null');
    }

    final blurHash = entity.blurHash ?? _defaultBlurHash;

    final userName = entity.user?.userName;
    if (userName == null) {
      throw Exception('userName is Null');
    }

    return ListPhotosDto(
      id: id,
      width: width,
      height: height,
      imageUrl: imageUrl,
      blurHash: blurHash,
      userName: userName,
    );
  }
}
