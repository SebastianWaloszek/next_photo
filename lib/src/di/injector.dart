import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:next_blog/src/di/injector.config.dart';

final _getIt = GetIt.instance;

/// Sets up all dependencies used in the app.
@InjectableInit(
  asExtension: true,
  initializerName: 'init',
)
void setupDependencies() => _getIt.init();
