import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:unsplash_clone/app/unsplash_config.dart';
import 'package:unsplash_clone/network/entity/list_photos/list_photos_entity.dart';

part 'photos_service.g.dart';

@RestApi(baseUrl: 'this url will be ignored if baseUrl is passed.')
abstract class PhotosService {
  factory PhotosService(Dio dio, {required String baseUrl}) = _PhotosService;

  @GET('/photos?page={page}&per_page={per_page}')
  @Headers({'Authorization': UnsplashConfig.accessToken})
  Future<List<ListPhotosEntity>> fetchListPhotos({
    @Path('page') required int page,
    @Path('per_page') required int perPage,
  });
}
