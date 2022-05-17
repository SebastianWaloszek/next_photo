import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:next_photo/src/common/data/http/app_http_client.dart';

void main() {
  group(
    '$AppHttpClient',
    () {
      test(
        'should be configured correctly',
        () {
          final baseOptions = BaseOptions();
          final interceptors = [Interceptor()];

          final client = AppHttpClient(
            options: baseOptions,
            interceptors: interceptors,
          );

          expect(client.options, baseOptions);
          expect(client.interceptors, interceptors);
          expect(client.httpClientAdapter, isA<DefaultHttpClientAdapter>());
        },
      );
    },
  );
}
