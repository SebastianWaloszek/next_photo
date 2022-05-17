import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

/// A logger for observing the behavior of [Bloc] instances.
class AppBlocObserver extends BlocObserver {
  /// Creates a bloc observer.
  AppBlocObserver({
    required Logger logger,
  }) : _logger = logger;

  final Logger _logger;

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.d(
      '''
      onChange(${bloc.runtimeType})
      currentState: {
        ${change.currentState}
      }
      nextState: {
        ${change.nextState}
      }
      ''',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.e('onError(${bloc.runtimeType})', error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}
