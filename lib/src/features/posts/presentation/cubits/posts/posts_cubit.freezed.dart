// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Post> posts) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsInitialState value) initial,
    required TResult Function(_PostsInProgressState value) inProgress,
    required TResult Function(_PostsSuccessState value) success,
    required TResult Function(_PostsFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res> implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  final PostsState _value;
  // ignore: unused_field
  final $Res Function(PostsState) _then;
}

/// @nodoc
abstract class _$PostsInitialStateCopyWith<$Res> {
  factory _$PostsInitialStateCopyWith(
          _PostsInitialState value, $Res Function(_PostsInitialState) then) =
      __$PostsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostsInitialStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsInitialStateCopyWith<$Res> {
  __$PostsInitialStateCopyWithImpl(
      _PostsInitialState _value, $Res Function(_PostsInitialState) _then)
      : super(_value, (v) => _then(v as _PostsInitialState));

  @override
  _PostsInitialState get _value => super._value as _PostsInitialState;
}

/// @nodoc

class _$_PostsInitialState implements _PostsInitialState {
  const _$_PostsInitialState();

  @override
  String toString() {
    return 'PostsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Post> posts) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
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
    required TResult Function(_PostsInitialState value) initial,
    required TResult Function(_PostsInProgressState value) inProgress,
    required TResult Function(_PostsSuccessState value) success,
    required TResult Function(_PostsFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PostsInitialState implements PostsState {
  const factory _PostsInitialState() = _$_PostsInitialState;
}

/// @nodoc
abstract class _$PostsInProgressStateCopyWith<$Res> {
  factory _$PostsInProgressStateCopyWith(_PostsInProgressState value,
          $Res Function(_PostsInProgressState) then) =
      __$PostsInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostsInProgressStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsInProgressStateCopyWith<$Res> {
  __$PostsInProgressStateCopyWithImpl(
      _PostsInProgressState _value, $Res Function(_PostsInProgressState) _then)
      : super(_value, (v) => _then(v as _PostsInProgressState));

  @override
  _PostsInProgressState get _value => super._value as _PostsInProgressState;
}

/// @nodoc

class _$_PostsInProgressState implements _PostsInProgressState {
  const _$_PostsInProgressState();

  @override
  String toString() {
    return 'PostsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostsInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Post> posts) success,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
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
    required TResult Function(_PostsInitialState value) initial,
    required TResult Function(_PostsInProgressState value) inProgress,
    required TResult Function(_PostsSuccessState value) success,
    required TResult Function(_PostsFailureState value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _PostsInProgressState implements PostsState {
  const factory _PostsInProgressState() = _$_PostsInProgressState;
}

/// @nodoc
abstract class _$PostsSuccessStateCopyWith<$Res> {
  factory _$PostsSuccessStateCopyWith(
          _PostsSuccessState value, $Res Function(_PostsSuccessState) then) =
      __$PostsSuccessStateCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class __$PostsSuccessStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsSuccessStateCopyWith<$Res> {
  __$PostsSuccessStateCopyWithImpl(
      _PostsSuccessState _value, $Res Function(_PostsSuccessState) _then)
      : super(_value, (v) => _then(v as _PostsSuccessState));

  @override
  _PostsSuccessState get _value => super._value as _PostsSuccessState;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_PostsSuccessState(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_PostsSuccessState implements _PostsSuccessState {
  const _$_PostsSuccessState(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostsState.success(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsSuccessState &&
            const DeepCollectionEquality().equals(other.posts, posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posts));

  @JsonKey(ignore: true)
  @override
  _$PostsSuccessStateCopyWith<_PostsSuccessState> get copyWith =>
      __$PostsSuccessStateCopyWithImpl<_PostsSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Post> posts) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsInitialState value) initial,
    required TResult Function(_PostsInProgressState value) inProgress,
    required TResult Function(_PostsSuccessState value) success,
    required TResult Function(_PostsFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PostsSuccessState implements PostsState {
  const factory _PostsSuccessState(final List<Post> posts) =
      _$_PostsSuccessState;

  List<Post> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostsSuccessStateCopyWith<_PostsSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostsFailureStateCopyWith<$Res> {
  factory _$PostsFailureStateCopyWith(
          _PostsFailureState value, $Res Function(_PostsFailureState) then) =
      __$PostsFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$PostsFailureStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsFailureStateCopyWith<$Res> {
  __$PostsFailureStateCopyWithImpl(
      _PostsFailureState _value, $Res Function(_PostsFailureState) _then)
      : super(_value, (v) => _then(v as _PostsFailureState));

  @override
  _PostsFailureState get _value => super._value as _PostsFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_PostsFailureState(
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

class _$_PostsFailureState implements _PostsFailureState {
  const _$_PostsFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PostsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$PostsFailureStateCopyWith<_PostsFailureState> get copyWith =>
      __$PostsFailureStateCopyWithImpl<_PostsFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Post> posts) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Post> posts)? success,
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
    required TResult Function(_PostsInitialState value) initial,
    required TResult Function(_PostsInProgressState value) inProgress,
    required TResult Function(_PostsSuccessState value) success,
    required TResult Function(_PostsFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsInitialState value)? initial,
    TResult Function(_PostsInProgressState value)? inProgress,
    TResult Function(_PostsSuccessState value)? success,
    TResult Function(_PostsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PostsFailureState implements PostsState {
  const factory _PostsFailureState(final Failure failure) =
      _$_PostsFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostsFailureStateCopyWith<_PostsFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
