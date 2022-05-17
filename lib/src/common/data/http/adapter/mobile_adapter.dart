import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

/// Returns HTTP adapter for mobile platform.
HttpClientAdapter getAdapter() {
  return DefaultHttpClientAdapter();
}
