import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';

/// A synchronous use case with [P] parameters.
abstract class UseCaseWithParams<T, P extends Params> {
  /// Executes use case with [parameters].
  Result<T> call(P parameters);
}

/// A synchronous use case without parameters.
abstract class UseCaseWithoutParams<T> {
  /// Executes use case without any parameters.
  Result<T> call();
}

/// A asynchronous use case with [P] parameters.
abstract class AsyncUseCaseWithParams<T, P extends Params> {
  /// Executes use case for [parameters].
  Future<Result<T>> call(P parameters);
}

/// A asynchronous use case without parameters.
abstract class AsyncUseCaseWithoutParams<T> {
  /// Executes use case without any parameters.
  Future<Result<T>> call();
}

/// A use case with parameters that returns a stream.
abstract class StreamUseCaseWithParams<T, P extends Params> {
  /// Executes use case for specified [parameters].
  Result<Stream<T>> call(P parameters);
}

/// A use case without parameters that returns a stream.
abstract class StreamUseCaseWithoutParams<T> {
  /// Executes use case without any parameters.
  Result<Stream<T>> call();
}

/// The interface for use case parameters.
abstract class Params extends Equatable {
  @override
  bool get stringify => true;
}
