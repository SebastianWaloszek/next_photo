import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_photo/src/app/app.dart';
import 'package:next_photo/src/app/app_bloc_observer.dart';
import 'package:next_photo/src/di/injector.dart';

/// Sets up application dependencies and runs the app.
Future<void> runApplication() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupDependencies();

  BlocOverrides.runZoned(
    () {
      runApp(App());
    },
    blocObserver: AppBlocObserver(logger: getIt()),
  );
}
