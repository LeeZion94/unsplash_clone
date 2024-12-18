import 'package:unsplash_clone/client/client_provider.dart';
import 'package:unsplash_clone/service/photos/photos_service.dart';
import 'package:unsplash_clone/service/topics/topics_service.dart';

class ServiceProvider {
  static ServiceProvider? _instance;

  ServiceProvider._internal();

  factory ServiceProvider() {
    ServiceProvider? instance = _instance;

    if (instance != null) {
      return instance;
    }

    instance = ServiceProvider._internal();
    _instance = instance;

    return instance;
  }

  PhotosService get photosService {
    final networkClient = ClientProvider().networkClient;
    final dio = networkClient.dio;
    final baseUrl = networkClient.baseUrl;

    return PhotosService(dio, baseUrl: baseUrl);
  }

  TopicsService get topicsService {
    final networkClient = ClientProvider().networkClient;
    final dio = networkClient.dio;
    final baseUrl = networkClient.baseUrl;

    return TopicsService(dio, baseUrl: baseUrl);
  }
}
