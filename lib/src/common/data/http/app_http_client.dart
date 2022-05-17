import 'package:dio/dio.dart';
import 'package:next_photo/src/common/data/http/adapter/shared.dart';

/// A custom Dio HTTP client implementation.
class AppHttpClient with DioMixin implements Dio {
  /// Creates HTTP client.
  AppHttpClient({
    BaseOptions? options,
    List<Interceptor> interceptors = const [],
  }) {
    httpClientAdapter = getAdapter();
    this.options = options ?? BaseOptions();
    this.interceptors.addAll(interceptors);
  }
}
