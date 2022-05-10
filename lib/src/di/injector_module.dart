import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
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
}
