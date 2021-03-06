import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:next_photo/src/di/injector.config.dart';

/// Singleton instance of GetIt dependency injector.
final getIt = GetIt.instance;

/// Sets up all dependencies used in the app.
@InjectableInit(
  asExtension: true,
  initializerName: 'init',
)
Future<void> setupDependencies() => getIt.init();
