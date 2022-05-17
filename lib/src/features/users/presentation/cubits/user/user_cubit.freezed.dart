// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(User user) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserInProgressState value) inProgress,
    required TResult Function(_UserSuccessState value) success,
    required TResult Function(_UserFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$$_UserInitialStateCopyWith<$Res> {
  factory _$$_UserInitialStateCopyWith(
          _$_UserInitialState value, $Res Function(_$_UserInitialState) then) =
      __$$_UserInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserInitialStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserInitialStateCopyWith<$Res> {
  __$$_UserInitialStateCopyWithImpl(
      _$_UserInitialState _value, $Res Function(_$_UserInitialState) _then)
      : super(_value, (v) => _then(v as _$_UserInitialState));

  @override
  _$_UserInitialState get _value => super._value as _$_UserInitialState;
}

/// @nodoc

class _$_UserInitialState implements _UserInitialState {
  const _$_UserInitialState();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(User user) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserInProgressState value) inProgress,
    required TResult Function(_UserSuccessState value) success,
    required TResult Function(_UserFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserInitialState implements UserState {
  const factory _UserInitialState() = _$_UserInitialState;
}

/// @nodoc
abstract class _$$_UserInProgressStateCopyWith<$Res> {
  factory _$$_UserInProgressStateCopyWith(_$_UserInProgressState value,
          $Res Function(_$_UserInProgressState) then) =
      __$$_UserInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserInProgressStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserInProgressStateCopyWith<$Res> {
  __$$_UserInProgressStateCopyWithImpl(_$_UserInProgressState _value,
      $Res Function(_$_UserInProgressState) _then)
      : super(_value, (v) => _then(v as _$_UserInProgressState));

  @override
  _$_UserInProgressState get _value => super._value as _$_UserInProgressState;
}

/// @nodoc

class _$_UserInProgressState implements _UserInProgressState {
  const _$_UserInProgressState();

  @override
  String toString() {
    return 'UserState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(User user) success,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserInProgressState value) inProgress,
    required TResult Function(_UserSuccessState value) success,
    required TResult Function(_UserFailureState value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _UserInProgressState implements UserState {
  const factory _UserInProgressState() = _$_UserInProgressState;
}

/// @nodoc
abstract class _$$_UserSuccessStateCopyWith<$Res> {
  factory _$$_UserSuccessStateCopyWith(
          _$_UserSuccessState value, $Res Function(_$_UserSuccessState) then) =
      __$$_UserSuccessStateCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserSuccessStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserSuccessStateCopyWith<$Res> {
  __$$_UserSuccessStateCopyWithImpl(
      _$_UserSuccessState _value, $Res Function(_$_UserSuccessState) _then)
      : super(_value, (v) => _then(v as _$_UserSuccessState));

  @override
  _$_UserSuccessState get _value => super._value as _$_UserSuccessState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_UserSuccessState(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UserSuccessState implements _UserSuccessState {
  const _$_UserSuccessState(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSuccessState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_UserSuccessStateCopyWith<_$_UserSuccessState> get copyWith =>
      __$$_UserSuccessStateCopyWithImpl<_$_UserSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(User user) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserInProgressState value) inProgress,
    required TResult Function(_UserSuccessState value) success,
    required TResult Function(_UserFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _UserSuccessState implements UserState {
  const factory _UserSuccessState(final User user) = _$_UserSuccessState;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UserSuccessStateCopyWith<_$_UserSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserFailureStateCopyWith<$Res> {
  factory _$$_UserFailureStateCopyWith(
          _$_UserFailureState value, $Res Function(_$_UserFailureState) then) =
      __$$_UserFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_UserFailureStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserFailureStateCopyWith<$Res> {
  __$$_UserFailureStateCopyWithImpl(
      _$_UserFailureState _value, $Res Function(_$_UserFailureState) _then)
      : super(_value, (v) => _then(v as _$_UserFailureState));

  @override
  _$_UserFailureState get _value => super._value as _$_UserFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_UserFailureState(
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

class _$_UserFailureState implements _UserFailureState {
  const _$_UserFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UserState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_UserFailureStateCopyWith<_$_UserFailureState> get copyWith =>
      __$$_UserFailureStateCopyWithImpl<_$_UserFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(User user) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(User user)? success,
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserInProgressState value) inProgress,
    required TResult Function(_UserSuccessState value) success,
    required TResult Function(_UserFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserInProgressState value)? inProgress,
    TResult Function(_UserSuccessState value)? success,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _UserFailureState implements UserState {
  const factory _UserFailureState(final Failure failure) = _$_UserFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UserFailureStateCopyWith<_$_UserFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
