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

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final dioException = _generateDioExceptionForOnErrorState(err);

    super.onError(dioException, handler);
  }

  DioException _generateDioExceptionForOnErrorState(DioException err) {
    final statusCode = err.response?.statusCode ?? 999;
    final message = err.response?.data['errors'].first ?? 'Unknown Error';

    return DioException(
      requestOptions: err.requestOptions,
      error: statusCode,
      message: message,
    );
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
