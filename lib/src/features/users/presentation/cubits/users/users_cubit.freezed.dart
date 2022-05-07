// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<User> users) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersInitialState value) initial,
    required TResult Function(_UsersInProgressState value) inProgress,
    required TResult Function(_UsersSuccessState value) success,
    required TResult Function(_UsersFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;
}

/// @nodoc
abstract class _$UsersInitialStateCopyWith<$Res> {
  factory _$UsersInitialStateCopyWith(
          _UsersInitialState value, $Res Function(_UsersInitialState) then) =
      __$UsersInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsersInitialStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersInitialStateCopyWith<$Res> {
  __$UsersInitialStateCopyWithImpl(
      _UsersInitialState _value, $Res Function(_UsersInitialState) _then)
      : super(_value, (v) => _then(v as _UsersInitialState));

  @override
  _UsersInitialState get _value => super._value as _UsersInitialState;
}

/// @nodoc

class _$_UsersInitialState implements _UsersInitialState {
  const _$_UsersInitialState();

  @override
  String toString() {
    return 'UsersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UsersInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<User> users) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersInitialState value) initial,
    required TResult Function(_UsersInProgressState value) inProgress,
    required TResult Function(_UsersSuccessState value) success,
    required TResult Function(_UsersFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UsersInitialState implements UsersState {
  const factory _UsersInitialState() = _$_UsersInitialState;
}

/// @nodoc
abstract class _$UsersInProgressStateCopyWith<$Res> {
  factory _$UsersInProgressStateCopyWith(_UsersInProgressState value,
          $Res Function(_UsersInProgressState) then) =
      __$UsersInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsersInProgressStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersInProgressStateCopyWith<$Res> {
  __$UsersInProgressStateCopyWithImpl(
      _UsersInProgressState _value, $Res Function(_UsersInProgressState) _then)
      : super(_value, (v) => _then(v as _UsersInProgressState));

  @override
  _UsersInProgressState get _value => super._value as _UsersInProgressState;
}

/// @nodoc

class _$_UsersInProgressState implements _UsersInProgressState {
  const _$_UsersInProgressState();

  @override
  String toString() {
    return 'UsersState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UsersInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<User> users) success,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersInitialState value) initial,
    required TResult Function(_UsersInProgressState value) inProgress,
    required TResult Function(_UsersSuccessState value) success,
    required TResult Function(_UsersFailureState value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _UsersInProgressState implements UsersState {
  const factory _UsersInProgressState() = _$_UsersInProgressState;
}

/// @nodoc
abstract class _$UsersSuccessStateCopyWith<$Res> {
  factory _$UsersSuccessStateCopyWith(
          _UsersSuccessState value, $Res Function(_UsersSuccessState) then) =
      __$UsersSuccessStateCopyWithImpl<$Res>;
  $Res call({List<User> users});
}

/// @nodoc
class __$UsersSuccessStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersSuccessStateCopyWith<$Res> {
  __$UsersSuccessStateCopyWithImpl(
      _UsersSuccessState _value, $Res Function(_UsersSuccessState) _then)
      : super(_value, (v) => _then(v as _UsersSuccessState));

  @override
  _UsersSuccessState get _value => super._value as _UsersSuccessState;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_UsersSuccessState(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_UsersSuccessState implements _UsersSuccessState {
  const _$_UsersSuccessState(final List<User> users) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersState.success(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersSuccessState &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  _$UsersSuccessStateCopyWith<_UsersSuccessState> get copyWith =>
      __$UsersSuccessStateCopyWithImpl<_UsersSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<User> users) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersInitialState value) initial,
    required TResult Function(_UsersInProgressState value) inProgress,
    required TResult Function(_UsersSuccessState value) success,
    required TResult Function(_UsersFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _UsersSuccessState implements UsersState {
  const factory _UsersSuccessState(final List<User> users) =
      _$_UsersSuccessState;

  List<User> get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsersSuccessStateCopyWith<_UsersSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsersFailureStateCopyWith<$Res> {
  factory _$UsersFailureStateCopyWith(
          _UsersFailureState value, $Res Function(_UsersFailureState) then) =
      __$UsersFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$UsersFailureStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersFailureStateCopyWith<$Res> {
  __$UsersFailureStateCopyWithImpl(
      _UsersFailureState _value, $Res Function(_UsersFailureState) _then)
      : super(_value, (v) => _then(v as _UsersFailureState));

  @override
  _UsersFailureState get _value => super._value as _UsersFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UsersFailureState(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UsersFailureState implements _UsersFailureState {
  const _$_UsersFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UsersState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$UsersFailureStateCopyWith<_UsersFailureState> get copyWith =>
      __$UsersFailureStateCopyWithImpl<_UsersFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<User> users) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<User> users)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersInitialState value) initial,
    required TResult Function(_UsersInProgressState value) inProgress,
    required TResult Function(_UsersSuccessState value) success,
    required TResult Function(_UsersFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersInitialState value)? initial,
    TResult Function(_UsersInProgressState value)? inProgress,
    TResult Function(_UsersSuccessState value)? success,
    TResult Function(_UsersFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _UsersFailureState implements UsersState {
  const factory _UsersFailureState(final Failure failure) =
      _$_UsersFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsersFailureStateCopyWith<_UsersFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
