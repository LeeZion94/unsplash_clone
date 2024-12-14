import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:unsplash_clone/app/unsplash_config.dart';
import 'package:unsplash_clone/network/entity/list_topics/list_topics_entity.dart';

part 'topics_service.g.dart';

@RestApi(baseUrl: 'this url will be ignored if baseUrl is passed.')
abstract class TopicsService {
  factory TopicsService(Dio dio, {required String baseUrl}) = _TopicsService;

  @GET('/topics')
  @Headers({'Authorization': UnsplashConfig.accessToken})
  Future<List<ListTopicsEntity>> fetchListTopics({
    @Path('order_by') String orderBy = 'featured',
    @Path('per_page') int perPage = 3,
  });
}
