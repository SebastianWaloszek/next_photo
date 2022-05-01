import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// The injection module used to inject third party dependencies.
@module
abstract class InjectorModule {
  /// Injects a new instance of [Logger].
  @lazySingleton
  Logger get logger => Logger();
}
