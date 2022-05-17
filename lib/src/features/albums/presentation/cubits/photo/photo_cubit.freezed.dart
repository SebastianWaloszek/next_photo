// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Photo photo) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoInitialState value) initial,
    required TResult Function(_PhotoInProgressState value) inProgress,
    required TResult Function(_PhotoSuccessState value) success,
    required TResult Function(_PhotoFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res> implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  final PhotoState _value;
  // ignore: unused_field
  final $Res Function(PhotoState) _then;
}

/// @nodoc
abstract class _$$_PhotoInitialStateCopyWith<$Res> {
  factory _$$_PhotoInitialStateCopyWith(_$_PhotoInitialState value,
          $Res Function(_$_PhotoInitialState) then) =
      __$$_PhotoInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhotoInitialStateCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res>
    implements _$$_PhotoInitialStateCopyWith<$Res> {
  __$$_PhotoInitialStateCopyWithImpl(
      _$_PhotoInitialState _value, $Res Function(_$_PhotoInitialState) _then)
      : super(_value, (v) => _then(v as _$_PhotoInitialState));

  @override
  _$_PhotoInitialState get _value => super._value as _$_PhotoInitialState;
}

/// @nodoc

class _$_PhotoInitialState implements _PhotoInitialState {
  const _$_PhotoInitialState();

  @override
  String toString() {
    return 'PhotoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PhotoInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Photo photo) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
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
    required TResult Function(_PhotoInitialState value) initial,
    required TResult Function(_PhotoInProgressState value) inProgress,
    required TResult Function(_PhotoSuccessState value) success,
    required TResult Function(_PhotoFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PhotoInitialState implements PhotoState {
  const factory _PhotoInitialState() = _$_PhotoInitialState;
}

/// @nodoc
abstract class _$$_PhotoInProgressStateCopyWith<$Res> {
  factory _$$_PhotoInProgressStateCopyWith(_$_PhotoInProgressState value,
          $Res Function(_$_PhotoInProgressState) then) =
      __$$_PhotoInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhotoInProgressStateCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res>
    implements _$$_PhotoInProgressStateCopyWith<$Res> {
  __$$_PhotoInProgressStateCopyWithImpl(_$_PhotoInProgressState _value,
      $Res Function(_$_PhotoInProgressState) _then)
      : super(_value, (v) => _then(v as _$_PhotoInProgressState));

  @override
  _$_PhotoInProgressState get _value => super._value as _$_PhotoInProgressState;
}

/// @nodoc

class _$_PhotoInProgressState implements _PhotoInProgressState {
  const _$_PhotoInProgressState();

  @override
  String toString() {
    return 'PhotoState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PhotoInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Photo photo) success,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
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
    required TResult Function(_PhotoInitialState value) initial,
    required TResult Function(_PhotoInProgressState value) inProgress,
    required TResult Function(_PhotoSuccessState value) success,
    required TResult Function(_PhotoFailureState value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _PhotoInProgressState implements PhotoState {
  const factory _PhotoInProgressState() = _$_PhotoInProgressState;
}

/// @nodoc
abstract class _$$_PhotoSuccessStateCopyWith<$Res> {
  factory _$$_PhotoSuccessStateCopyWith(_$_PhotoSuccessState value,
          $Res Function(_$_PhotoSuccessState) then) =
      __$$_PhotoSuccessStateCopyWithImpl<$Res>;
  $Res call({Photo photo});

  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class __$$_PhotoSuccessStateCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res>
    implements _$$_PhotoSuccessStateCopyWith<$Res> {
  __$$_PhotoSuccessStateCopyWithImpl(
      _$_PhotoSuccessState _value, $Res Function(_$_PhotoSuccessState) _then)
      : super(_value, (v) => _then(v as _$_PhotoSuccessState));

  @override
  _$_PhotoSuccessState get _value => super._value as _$_PhotoSuccessState;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_$_PhotoSuccessState(
      photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
    ));
  }

  @override
  $PhotoCopyWith<$Res> get photo {
    return $PhotoCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value));
    });
  }
}

/// @nodoc

class _$_PhotoSuccessState implements _PhotoSuccessState {
  const _$_PhotoSuccessState(this.photo);

  @override
  final Photo photo;

  @override
  String toString() {
    return 'PhotoState.success(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoSuccessState &&
            const DeepCollectionEquality().equals(other.photo, photo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(photo));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoSuccessStateCopyWith<_$_PhotoSuccessState> get copyWith =>
      __$$_PhotoSuccessStateCopyWithImpl<_$_PhotoSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Photo photo) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoInitialState value) initial,
    required TResult Function(_PhotoInProgressState value) inProgress,
    required TResult Function(_PhotoSuccessState value) success,
    required TResult Function(_PhotoFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PhotoSuccessState implements PhotoState {
  const factory _PhotoSuccessState(final Photo photo) = _$_PhotoSuccessState;

  Photo get photo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PhotoSuccessStateCopyWith<_$_PhotoSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhotoFailureStateCopyWith<$Res> {
  factory _$$_PhotoFailureStateCopyWith(_$_PhotoFailureState value,
          $Res Function(_$_PhotoFailureState) then) =
      __$$_PhotoFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_PhotoFailureStateCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res>
    implements _$$_PhotoFailureStateCopyWith<$Res> {
  __$$_PhotoFailureStateCopyWithImpl(
      _$_PhotoFailureState _value, $Res Function(_$_PhotoFailureState) _then)
      : super(_value, (v) => _then(v as _$_PhotoFailureState));

  @override
  _$_PhotoFailureState get _value => super._value as _$_PhotoFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_PhotoFailureState(
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

class _$_PhotoFailureState implements _PhotoFailureState {
  const _$_PhotoFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PhotoState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoFailureStateCopyWith<_$_PhotoFailureState> get copyWith =>
      __$$_PhotoFailureStateCopyWithImpl<_$_PhotoFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Photo photo) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Photo photo)? success,
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
    required TResult Function(_PhotoInitialState value) initial,
    required TResult Function(_PhotoInProgressState value) inProgress,
    required TResult Function(_PhotoSuccessState value) success,
    required TResult Function(_PhotoFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoInitialState value)? initial,
    TResult Function(_PhotoInProgressState value)? inProgress,
    TResult Function(_PhotoSuccessState value)? success,
    TResult Function(_PhotoFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PhotoFailureState implements PhotoState {
  const factory _PhotoFailureState(final Failure failure) =
      _$_PhotoFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PhotoFailureStateCopyWith<_$_PhotoFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
