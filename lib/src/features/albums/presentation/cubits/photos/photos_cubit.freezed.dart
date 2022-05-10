// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photos_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Photo> photos) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotosInitialState value) initial,
    required TResult Function(_PhotosInProgressState value) inProgress,
    required TResult Function(_PhotosSuccessState value) success,
    required TResult Function(_PhotosFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res> implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  final PhotosState _value;
  // ignore: unused_field
  final $Res Function(PhotosState) _then;
}

/// @nodoc
abstract class _$PhotosInitialStateCopyWith<$Res> {
  factory _$PhotosInitialStateCopyWith(
          _PhotosInitialState value, $Res Function(_PhotosInitialState) then) =
      __$PhotosInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$PhotosInitialStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements _$PhotosInitialStateCopyWith<$Res> {
  __$PhotosInitialStateCopyWithImpl(
      _PhotosInitialState _value, $Res Function(_PhotosInitialState) _then)
      : super(_value, (v) => _then(v as _PhotosInitialState));

  @override
  _PhotosInitialState get _value => super._value as _PhotosInitialState;
}

/// @nodoc

class _$_PhotosInitialState implements _PhotosInitialState {
  const _$_PhotosInitialState();

  @override
  String toString() {
    return 'PhotosState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PhotosInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Photo> photos) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
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
    required TResult Function(_PhotosInitialState value) initial,
    required TResult Function(_PhotosInProgressState value) inProgress,
    required TResult Function(_PhotosSuccessState value) success,
    required TResult Function(_PhotosFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PhotosInitialState implements PhotosState {
  const factory _PhotosInitialState() = _$_PhotosInitialState;
}

/// @nodoc
abstract class _$PhotosInProgressStateCopyWith<$Res> {
  factory _$PhotosInProgressStateCopyWith(_PhotosInProgressState value,
          $Res Function(_PhotosInProgressState) then) =
      __$PhotosInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$PhotosInProgressStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements _$PhotosInProgressStateCopyWith<$Res> {
  __$PhotosInProgressStateCopyWithImpl(_PhotosInProgressState _value,
      $Res Function(_PhotosInProgressState) _then)
      : super(_value, (v) => _then(v as _PhotosInProgressState));

  @override
  _PhotosInProgressState get _value => super._value as _PhotosInProgressState;
}

/// @nodoc

class _$_PhotosInProgressState implements _PhotosInProgressState {
  const _$_PhotosInProgressState();

  @override
  String toString() {
    return 'PhotosState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PhotosInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Photo> photos) success,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
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
    required TResult Function(_PhotosInitialState value) initial,
    required TResult Function(_PhotosInProgressState value) inProgress,
    required TResult Function(_PhotosSuccessState value) success,
    required TResult Function(_PhotosFailureState value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _PhotosInProgressState implements PhotosState {
  const factory _PhotosInProgressState() = _$_PhotosInProgressState;
}

/// @nodoc
abstract class _$PhotosSuccessStateCopyWith<$Res> {
  factory _$PhotosSuccessStateCopyWith(
          _PhotosSuccessState value, $Res Function(_PhotosSuccessState) then) =
      __$PhotosSuccessStateCopyWithImpl<$Res>;
  $Res call({List<Photo> photos});
}

/// @nodoc
class __$PhotosSuccessStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements _$PhotosSuccessStateCopyWith<$Res> {
  __$PhotosSuccessStateCopyWithImpl(
      _PhotosSuccessState _value, $Res Function(_PhotosSuccessState) _then)
      : super(_value, (v) => _then(v as _PhotosSuccessState));

  @override
  _PhotosSuccessState get _value => super._value as _PhotosSuccessState;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(_PhotosSuccessState(
      photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$_PhotosSuccessState implements _PhotosSuccessState {
  const _$_PhotosSuccessState(final List<Photo> photos) : _photos = photos;

  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'PhotosState.success(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotosSuccessState &&
            const DeepCollectionEquality().equals(other.photos, photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(photos));

  @JsonKey(ignore: true)
  @override
  _$PhotosSuccessStateCopyWith<_PhotosSuccessState> get copyWith =>
      __$PhotosSuccessStateCopyWithImpl<_PhotosSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Photo> photos) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotosInitialState value) initial,
    required TResult Function(_PhotosInProgressState value) inProgress,
    required TResult Function(_PhotosSuccessState value) success,
    required TResult Function(_PhotosFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PhotosSuccessState implements PhotosState {
  const factory _PhotosSuccessState(final List<Photo> photos) =
      _$_PhotosSuccessState;

  List<Photo> get photos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhotosSuccessStateCopyWith<_PhotosSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhotosFailureStateCopyWith<$Res> {
  factory _$PhotosFailureStateCopyWith(
          _PhotosFailureState value, $Res Function(_PhotosFailureState) then) =
      __$PhotosFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$PhotosFailureStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements _$PhotosFailureStateCopyWith<$Res> {
  __$PhotosFailureStateCopyWithImpl(
      _PhotosFailureState _value, $Res Function(_PhotosFailureState) _then)
      : super(_value, (v) => _then(v as _PhotosFailureState));

  @override
  _PhotosFailureState get _value => super._value as _PhotosFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_PhotosFailureState(
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

class _$_PhotosFailureState implements _PhotosFailureState {
  const _$_PhotosFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PhotosState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotosFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$PhotosFailureStateCopyWith<_PhotosFailureState> get copyWith =>
      __$PhotosFailureStateCopyWithImpl<_PhotosFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Photo> photos) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Photo> photos)? success,
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
    required TResult Function(_PhotosInitialState value) initial,
    required TResult Function(_PhotosInProgressState value) inProgress,
    required TResult Function(_PhotosSuccessState value) success,
    required TResult Function(_PhotosFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosInitialState value)? initial,
    TResult Function(_PhotosInProgressState value)? inProgress,
    TResult Function(_PhotosSuccessState value)? success,
    TResult Function(_PhotosFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PhotosFailureState implements PhotosState {
  const factory _PhotosFailureState(final Failure failure) =
      _$_PhotosFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhotosFailureStateCopyWith<_PhotosFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}