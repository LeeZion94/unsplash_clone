import 'package:dio/dio.dart';

class HttpStatusInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final statusCode = response.statusCode;

    switch (statusCode) {
      case 200:
        handler.next(response);
        break;
      default:
        _handleResponseToReject(
          response: response,
          handler: handler,
        );
    }
  }

  void _handleResponseToReject({
    required Response response,
    required ResponseInterceptorHandler handler,
  }) {
    handler.reject(
      DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: 'Status code: ${response.statusCode}',
      ),
    );
  }
}
