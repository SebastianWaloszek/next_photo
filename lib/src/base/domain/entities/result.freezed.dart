// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T result) $default, {
    required TResult Function(Failure error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value) $default, {
    required TResult Function(_ResultFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res> implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T> _value;
  // ignore: unused_field
  final $Res Function(Result<T>) _then;
}

/// @nodoc
abstract class _$ResultSuccessCopyWith<T, $Res> {
  factory _$ResultSuccessCopyWith(
          _ResultSuccess<T> value, $Res Function(_ResultSuccess<T>) then) =
      __$ResultSuccessCopyWithImpl<T, $Res>;
  $Res call({T result});
}

/// @nodoc
class __$ResultSuccessCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$ResultSuccessCopyWith<T, $Res> {
  __$ResultSuccessCopyWithImpl(
      _ResultSuccess<T> _value, $Res Function(_ResultSuccess<T>) _then)
      : super(_value, (v) => _then(v as _ResultSuccess<T>));

  @override
  _ResultSuccess<T> get _value => super._value as _ResultSuccess<T>;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_ResultSuccess<T>(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ResultSuccess<T> implements _ResultSuccess<T> {
  const _$_ResultSuccess(this.result);

  @override
  final T result;

  @override
  String toString() {
    return 'Result<$T>(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultSuccess<T> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$ResultSuccessCopyWith<T, _ResultSuccess<T>> get copyWith =>
      __$ResultSuccessCopyWithImpl<T, _ResultSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T result) $default, {
    required TResult Function(Failure error) failure,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
  }) {
    return $default?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value) $default, {
    required TResult Function(_ResultFailure<T> value) failure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ResultSuccess<T> implements Result<T> {
  const factory _ResultSuccess(final T result) = _$_ResultSuccess<T>;

  T get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResultSuccessCopyWith<T, _ResultSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultFailureCopyWith<T, $Res> {
  factory _$ResultFailureCopyWith(
          _ResultFailure<T> value, $Res Function(_ResultFailure<T>) then) =
      __$ResultFailureCopyWithImpl<T, $Res>;
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$ResultFailureCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$ResultFailureCopyWith<T, $Res> {
  __$ResultFailureCopyWithImpl(
      _ResultFailure<T> _value, $Res Function(_ResultFailure<T>) _then)
      : super(_value, (v) => _then(v as _ResultFailure<T>));

  @override
  _ResultFailure<T> get _value => super._value as _ResultFailure<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_ResultFailure<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_ResultFailure<T> implements _ResultFailure<T> {
  const _$_ResultFailure(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'Result<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultFailure<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ResultFailureCopyWith<T, _ResultFailure<T>> get copyWith =>
      __$ResultFailureCopyWithImpl<T, _ResultFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T result) $default, {
    required TResult Function(Failure error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value) $default, {
    required TResult Function(_ResultFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ResultFailure<T> implements Result<T> {
  const factory _ResultFailure(final Failure error) = _$_ResultFailure<T>;

  Failure get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResultFailureCopyWith<T, _ResultFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Failure {
  dynamic get value => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({dynamic value, StackTrace? stackTrace});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
abstract class _$ErrorFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ErrorFailureCopyWith(
          _ErrorFailure value, $Res Function(_ErrorFailure) then) =
      __$ErrorFailureCopyWithImpl<$Res>;
  @override
  $Res call({dynamic value, StackTrace? stackTrace});
}

/// @nodoc
class __$ErrorFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ErrorFailureCopyWith<$Res> {
  __$ErrorFailureCopyWithImpl(
      _ErrorFailure _value, $Res Function(_ErrorFailure) _then)
      : super(_value, (v) => _then(v as _ErrorFailure));

  @override
  _ErrorFailure get _value => super._value as _ErrorFailure;

  @override
  $Res call({
    Object? value = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_ErrorFailure(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_ErrorFailure implements _ErrorFailure {
  const _$_ErrorFailure(this.value, [this.stackTrace]);

  @override
  final dynamic value;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Failure(value: $value, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorFailure &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$ErrorFailureCopyWith<_ErrorFailure> get copyWith =>
      __$ErrorFailureCopyWithImpl<_ErrorFailure>(this, _$identity);
}

abstract class _ErrorFailure implements Failure {
  const factory _ErrorFailure(final dynamic value,
      [final StackTrace? stackTrace]) = _$_ErrorFailure;

  @override
  dynamic get value => throw _privateConstructorUsedError;
  @override
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorFailureCopyWith<_ErrorFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
