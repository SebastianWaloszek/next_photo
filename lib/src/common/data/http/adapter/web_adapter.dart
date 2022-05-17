import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';

/// Returns HTTP adapter for web platform.
HttpClientAdapter getAdapter() {
  return BrowserHttpClientAdapter();
}
