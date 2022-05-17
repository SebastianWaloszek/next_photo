import 'package:dio/dio.dart';

/// Returns HTTP adapter for unsupported platform.
HttpClientAdapter getAdapter() {
  throw 'Platform is unsupported';
}
