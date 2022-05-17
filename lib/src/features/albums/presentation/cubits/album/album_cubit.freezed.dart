// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlbumState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Album album) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumInProgressState value) inProgress,
    required TResult Function(_AlbumSuccessState value) success,
    required TResult Function(_AlbumFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumStateCopyWith<$Res> {
  factory $AlbumStateCopyWith(
          AlbumState value, $Res Function(AlbumState) then) =
      _$AlbumStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AlbumStateCopyWithImpl<$Res> implements $AlbumStateCopyWith<$Res> {
  _$AlbumStateCopyWithImpl(this._value, this._then);

  final AlbumState _value;
  // ignore: unused_field
  final $Res Function(AlbumState) _then;
}

/// @nodoc
abstract class _$$_AlbumInitialStateCopyWith<$Res> {
  factory _$$_AlbumInitialStateCopyWith(_$_AlbumInitialState value,
          $Res Function(_$_AlbumInitialState) then) =
      __$$_AlbumInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlbumInitialStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res>
    implements _$$_AlbumInitialStateCopyWith<$Res> {
  __$$_AlbumInitialStateCopyWithImpl(
      _$_AlbumInitialState _value, $Res Function(_$_AlbumInitialState) _then)
      : super(_value, (v) => _then(v as _$_AlbumInitialState));

  @override
  _$_AlbumInitialState get _value => super._value as _$_AlbumInitialState;
}

/// @nodoc

class _$_AlbumInitialState implements _AlbumInitialState {
  const _$_AlbumInitialState();

  @override
  String toString() {
    return 'AlbumState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlbumInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Album album) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
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
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumInProgressState value) inProgress,
    required TResult Function(_AlbumSuccessState value) success,
    required TResult Function(_AlbumFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AlbumInitialState implements AlbumState {
  const factory _AlbumInitialState() = _$_AlbumInitialState;
}

/// @nodoc
abstract class _$$_AlbumInProgressStateCopyWith<$Res> {
  factory _$$_AlbumInProgressStateCopyWith(_$_AlbumInProgressState value,
          $Res Function(_$_AlbumInProgressState) then) =
      __$$_AlbumInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlbumInProgressStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res>
    implements _$$_AlbumInProgressStateCopyWith<$Res> {
  __$$_AlbumInProgressStateCopyWithImpl(_$_AlbumInProgressState _value,
      $Res Function(_$_AlbumInProgressState) _then)
      : super(_value, (v) => _then(v as _$_AlbumInProgressState));

  @override
  _$_AlbumInProgressState get _value => super._value as _$_AlbumInProgressState;
}

/// @nodoc

class _$_AlbumInProgressState implements _AlbumInProgressState {
  const _$_AlbumInProgressState();

  @override
  String toString() {
    return 'AlbumState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlbumInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Album album) success,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
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
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumInProgressState value) inProgress,
    required TResult Function(_AlbumSuccessState value) success,
    required TResult Function(_AlbumFailureState value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _AlbumInProgressState implements AlbumState {
  const factory _AlbumInProgressState() = _$_AlbumInProgressState;
}

/// @nodoc
abstract class _$$_AlbumSuccessStateCopyWith<$Res> {
  factory _$$_AlbumSuccessStateCopyWith(_$_AlbumSuccessState value,
          $Res Function(_$_AlbumSuccessState) then) =
      __$$_AlbumSuccessStateCopyWithImpl<$Res>;
  $Res call({Album album});

  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class __$$_AlbumSuccessStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res>
    implements _$$_AlbumSuccessStateCopyWith<$Res> {
  __$$_AlbumSuccessStateCopyWithImpl(
      _$_AlbumSuccessState _value, $Res Function(_$_AlbumSuccessState) _then)
      : super(_value, (v) => _then(v as _$_AlbumSuccessState));

  @override
  _$_AlbumSuccessState get _value => super._value as _$_AlbumSuccessState;

  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_$_AlbumSuccessState(
      album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
    ));
  }

  @override
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value));
    });
  }
}

/// @nodoc

class _$_AlbumSuccessState implements _AlbumSuccessState {
  const _$_AlbumSuccessState(this.album);

  @override
  final Album album;

  @override
  String toString() {
    return 'AlbumState.success(album: $album)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumSuccessState &&
            const DeepCollectionEquality().equals(other.album, album));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(album));

  @JsonKey(ignore: true)
  @override
  _$$_AlbumSuccessStateCopyWith<_$_AlbumSuccessState> get copyWith =>
      __$$_AlbumSuccessStateCopyWithImpl<_$_AlbumSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Album album) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(album);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(album);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(album);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumInProgressState value) inProgress,
    required TResult Function(_AlbumSuccessState value) success,
    required TResult Function(_AlbumFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AlbumSuccessState implements AlbumState {
  const factory _AlbumSuccessState(final Album album) = _$_AlbumSuccessState;

  Album get album => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AlbumSuccessStateCopyWith<_$_AlbumSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AlbumFailureStateCopyWith<$Res> {
  factory _$$_AlbumFailureStateCopyWith(_$_AlbumFailureState value,
          $Res Function(_$_AlbumFailureState) then) =
      __$$_AlbumFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_AlbumFailureStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res>
    implements _$$_AlbumFailureStateCopyWith<$Res> {
  __$$_AlbumFailureStateCopyWithImpl(
      _$_AlbumFailureState _value, $Res Function(_$_AlbumFailureState) _then)
      : super(_value, (v) => _then(v as _$_AlbumFailureState));

  @override
  _$_AlbumFailureState get _value => super._value as _$_AlbumFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_AlbumFailureState(
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

class _$_AlbumFailureState implements _AlbumFailureState {
  const _$_AlbumFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AlbumState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_AlbumFailureStateCopyWith<_$_AlbumFailureState> get copyWith =>
      __$$_AlbumFailureStateCopyWithImpl<_$_AlbumFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Album album) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Album album)? success,
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
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumInProgressState value) inProgress,
    required TResult Function(_AlbumSuccessState value) success,
    required TResult Function(_AlbumFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumInProgressState value)? inProgress,
    TResult Function(_AlbumSuccessState value)? success,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AlbumFailureState implements AlbumState {
  const factory _AlbumFailureState(final Failure failure) =
      _$_AlbumFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AlbumFailureStateCopyWith<_$_AlbumFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
