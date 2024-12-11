import 'package:dio/dio.dart';
import 'package:unsplash_clone/network/interceptor/http_status_interceptor.dart';
import 'package:unsplash_clone/network/interceptor/logging_interceptor.dart';

class NetworkClient {
  final String _apiBaseUrl;

  NetworkClient({required String apiBaseUrl}) : _apiBaseUrl = apiBaseUrl;

  Dio get dio => _generateDio();

  Dio _generateDio() {
    final baseOptions = BaseOptions(
      baseUrl: _apiBaseUrl,
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    final dio = Dio(baseOptions)
      ..interceptors.addAll([
        HttpStatusInterceptor(),
        LoggingInterceptor(),
      ]);

    return dio;
  }
}
