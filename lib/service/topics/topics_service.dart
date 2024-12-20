import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:unsplash_clone/app/unsplash_config.dart';
import 'package:unsplash_clone/network/entity/list_photos/list_photos_entity.dart';
import 'package:unsplash_clone/network/entity/list_topics/list_topics_entity.dart';

part 'topics_service.g.dart';

@RestApi(baseUrl: 'this url will be ignored if baseUrl is passed.')
abstract class TopicsService {
  factory TopicsService(Dio dio, {required String baseUrl}) = _TopicsService;

  @GET('/topics')
  @Headers({'Authorization': UnsplashConfig.accessToken})
  Future<List<ListTopicsEntity>> fetchListTopics({
    @Path('order_by') String orderBy = 'featured',
    @Path('per_page') int perPage = 10,
  });

  @GET('/topics/{id_or_slug}/photos?page={page}&per_page={per_page}')
  @Headers({'Authorization': UnsplashConfig.accessToken})
  Future<List<ListPhotosEntity>> fetchTopicPhotos({
    @Path('id_or_slug') required String topicId,
    @Path('page') required int page,
    @Path('per_page') required int perPage,
  });
}
