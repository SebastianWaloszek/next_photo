// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Post post) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostInitialState value) initial,
    required TResult Function(_PostInProgressState value) inProgress,
    required TResult Function(_PostSuccessState value) success,
    required TResult Function(_PostFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;
}

/// @nodoc
abstract class _$PostInitialStateCopyWith<$Res> {
  factory _$PostInitialStateCopyWith(
          _PostInitialState value, $Res Function(_PostInitialState) then) =
      __$PostInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostInitialStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$PostInitialStateCopyWith<$Res> {
  __$PostInitialStateCopyWithImpl(
      _PostInitialState _value, $Res Function(_PostInitialState) _then)
      : super(_value, (v) => _then(v as _PostInitialState));

  @override
  _PostInitialState get _value => super._value as _PostInitialState;
}

/// @nodoc

class _$_PostInitialState implements _PostInitialState {
  const _$_PostInitialState();

  @override
  String toString() {
    return 'PostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Post post) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
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
    required TResult Function(_PostInitialState value) initial,
    required TResult Function(_PostInProgressState value) inProgress,
    required TResult Function(_PostSuccessState value) success,
    required TResult Function(_PostFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PostInitialState implements PostState {
  const factory _PostInitialState() = _$_PostInitialState;
}

/// @nodoc
abstract class _$PostInProgressStateCopyWith<$Res> {
  factory _$PostInProgressStateCopyWith(_PostInProgressState value,
          $Res Function(_PostInProgressState) then) =
      __$PostInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostInProgressStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$PostInProgressStateCopyWith<$Res> {
  __$PostInProgressStateCopyWithImpl(
      _PostInProgressState _value, $Res Function(_PostInProgressState) _then)
      : super(_value, (v) => _then(v as _PostInProgressState));

  @override
  _PostInProgressState get _value => super._value as _PostInProgressState;
}

/// @nodoc

class _$_PostInProgressState implements _PostInProgressState {
  const _$_PostInProgressState();

  @override
  String toString() {
    return 'PostState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Post post) success,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
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
    required TResult Function(_PostInitialState value) initial,
    required TResult Function(_PostInProgressState value) inProgress,
    required TResult Function(_PostSuccessState value) success,
    required TResult Function(_PostFailureState value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _PostInProgressState implements PostState {
  const factory _PostInProgressState() = _$_PostInProgressState;
}

/// @nodoc
abstract class _$PostSuccessStateCopyWith<$Res> {
  factory _$PostSuccessStateCopyWith(
          _PostSuccessState value, $Res Function(_PostSuccessState) then) =
      __$PostSuccessStateCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$PostSuccessStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$PostSuccessStateCopyWith<$Res> {
  __$PostSuccessStateCopyWithImpl(
      _PostSuccessState _value, $Res Function(_PostSuccessState) _then)
      : super(_value, (v) => _then(v as _PostSuccessState));

  @override
  _PostSuccessState get _value => super._value as _PostSuccessState;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_PostSuccessState(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$_PostSuccessState implements _PostSuccessState {
  const _$_PostSuccessState(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostState.success(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostSuccessState &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$PostSuccessStateCopyWith<_PostSuccessState> get copyWith =>
      __$PostSuccessStateCopyWithImpl<_PostSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Post post) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostInitialState value) initial,
    required TResult Function(_PostInProgressState value) inProgress,
    required TResult Function(_PostSuccessState value) success,
    required TResult Function(_PostFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PostSuccessState implements PostState {
  const factory _PostSuccessState(final Post post) = _$_PostSuccessState;

  Post get post => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostSuccessStateCopyWith<_PostSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostFailureStateCopyWith<$Res> {
  factory _$PostFailureStateCopyWith(
          _PostFailureState value, $Res Function(_PostFailureState) then) =
      __$PostFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$PostFailureStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$PostFailureStateCopyWith<$Res> {
  __$PostFailureStateCopyWithImpl(
      _PostFailureState _value, $Res Function(_PostFailureState) _then)
      : super(_value, (v) => _then(v as _PostFailureState));

  @override
  _PostFailureState get _value => super._value as _PostFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_PostFailureState(
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

class _$_PostFailureState implements _PostFailureState {
  const _$_PostFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PostState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$PostFailureStateCopyWith<_PostFailureState> get copyWith =>
      __$PostFailureStateCopyWithImpl<_PostFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Post post) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Post post)? success,
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
    required TResult Function(_PostInitialState value) initial,
    required TResult Function(_PostInProgressState value) inProgress,
    required TResult Function(_PostSuccessState value) success,
    required TResult Function(_PostFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostInProgressState value)? inProgress,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PostFailureState implements PostState {
  const factory _PostFailureState(final Failure failure) = _$_PostFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostFailureStateCopyWith<_PostFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
