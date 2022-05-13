import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:next_blog/src/common/data/http/app_http_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// The injection module used to inject third party dependencies.
@module
abstract class InjectorModule {
  /// Injects a new instance of [Logger].
  @lazySingleton
  Logger get logger => Logger();

  /// Injects a new instance of [SharedPreferences].
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  /// Inject a new custom HTTP client instance.
  @LazySingleton(as: Dio)
  AppHttpClient get appHttpClient => AppHttpClient();

  /// Inject a base url for HTTP client endpoint.
  @Named("baseUrl")
  String get baseUrl => "https://jsonplaceholder.typicode.com/";
}
