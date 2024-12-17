import 'package:unsplash_clone/network/dto/list_topics/list_topics_dto.dart';
import 'package:unsplash_clone/network/entity/list_topics/list_topics_entity.dart';
import 'package:unsplash_clone/util/mapper.dart';

class ListTopicsDtoMapper implements Mapper<ListTopicsEntity, ListTopicsDto> {
  @override
  ListTopicsDto mapToDto(ListTopicsEntity? entity) {
    if (entity == null) {
      throw Exception('entity is null');
    }

    final title = entity.title;
    if (title == null) {
      throw Exception('title is null');
    }

    final id = entity.id;
    if (id == null) {
      throw Exception('id is null');
    }

    final description = entity.description;
    if (description == null) {
      throw Exception('description is null');
    }

    return ListTopicsDto(
      id: id,
      title: title,
      description: description,
    );
  }
}
