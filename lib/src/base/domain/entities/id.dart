import 'package:equatable/equatable.dart';

/// The interface for an id with [T] type value;
abstract class Id<T> extends Equatable {
  /// Create the id for a specified [value] of [T] type.
  const Id(T value) : _value = value;

  /// Return the value of the id.
  T get value => _value;

  final T _value;

  @override
  List<Object?> get props => [_value];

  @override
  String toString() => _value.toString();
}
