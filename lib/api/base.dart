import 'package:dio/dio.dart';

class DioRequest {
  static final DioRequest _instance = DioRequest._internal();
  late Dio dio;

  factory DioRequest() {
    return _instance;
  }

  DioRequest._internal() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: 'http://localhost:3002',
      connectTimeout: const Duration(seconds: 5000),
    );

    dio = Dio(baseOptions);

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          // options.headers['Authorization'] = 'Bearer YOUR_TOKEN';
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          if (error.response?.statusCode == 404) {
            return handler.resolve(Response(
                requestOptions: error.requestOptions, data: 'Resource not found'));
          }
          return handler.next(error);
        },
      ),
    );
  }
}
