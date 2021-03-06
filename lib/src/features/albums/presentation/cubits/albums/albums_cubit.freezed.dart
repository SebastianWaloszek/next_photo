// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'albums_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlbumsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Album> albums) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumsInitialState value) initial,
    required TResult Function(_AlbumsInProgressState value) inProgress,
    required TResult Function(_AlbumsSuccessState value) success,
    required TResult Function(_AlbumsFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsStateCopyWith<$Res> {
  factory $AlbumsStateCopyWith(
          AlbumsState value, $Res Function(AlbumsState) then) =
      _$AlbumsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AlbumsStateCopyWithImpl<$Res> implements $AlbumsStateCopyWith<$Res> {
  _$AlbumsStateCopyWithImpl(this._value, this._then);

  final AlbumsState _value;
  // ignore: unused_field
  final $Res Function(AlbumsState) _then;
}

/// @nodoc
abstract class _$$_AlbumsInitialStateCopyWith<$Res> {
  factory _$$_AlbumsInitialStateCopyWith(_$_AlbumsInitialState value,
          $Res Function(_$_AlbumsInitialState) then) =
      __$$_AlbumsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlbumsInitialStateCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res>
    implements _$$_AlbumsInitialStateCopyWith<$Res> {
  __$$_AlbumsInitialStateCopyWithImpl(
      _$_AlbumsInitialState _value, $Res Function(_$_AlbumsInitialState) _then)
      : super(_value, (v) => _then(v as _$_AlbumsInitialState));

  @override
  _$_AlbumsInitialState get _value => super._value as _$_AlbumsInitialState;
}

/// @nodoc

class _$_AlbumsInitialState implements _AlbumsInitialState {
  const _$_AlbumsInitialState();

  @override
  String toString() {
    return 'AlbumsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlbumsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Album> albums) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
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
    required TResult Function(_AlbumsInitialState value) initial,
    required TResult Function(_AlbumsInProgressState value) inProgress,
    required TResult Function(_AlbumsSuccessState value) success,
    required TResult Function(_AlbumsFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AlbumsInitialState implements AlbumsState {
  const factory _AlbumsInitialState() = _$_AlbumsInitialState;
}

/// @nodoc
abstract class _$$_AlbumsInProgressStateCopyWith<$Res> {
  factory _$$_AlbumsInProgressStateCopyWith(_$_AlbumsInProgressState value,
          $Res Function(_$_AlbumsInProgressState) then) =
      __$$_AlbumsInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlbumsInProgressStateCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res>
    implements _$$_AlbumsInProgressStateCopyWith<$Res> {
  __$$_AlbumsInProgressStateCopyWithImpl(_$_AlbumsInProgressState _value,
      $Res Function(_$_AlbumsInProgressState) _then)
      : super(_value, (v) => _then(v as _$_AlbumsInProgressState));

  @override
  _$_AlbumsInProgressState get _value =>
      super._value as _$_AlbumsInProgressState;
}

/// @nodoc

class _$_AlbumsInProgressState implements _AlbumsInProgressState {
  const _$_AlbumsInProgressState();

  @override
  String toString() {
    return 'AlbumsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlbumsInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Album> albums) success,
    required TResult Function(Failure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
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
    required TResult Function(_AlbumsInitialState value) initial,
    required TResult Function(_AlbumsInProgressState value) inProgress,
    required TResult Function(_AlbumsSuccessState value) success,
    required TResult Function(_AlbumsFailureState value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _AlbumsInProgressState implements AlbumsState {
  const factory _AlbumsInProgressState() = _$_AlbumsInProgressState;
}

/// @nodoc
abstract class _$$_AlbumsSuccessStateCopyWith<$Res> {
  factory _$$_AlbumsSuccessStateCopyWith(_$_AlbumsSuccessState value,
          $Res Function(_$_AlbumsSuccessState) then) =
      __$$_AlbumsSuccessStateCopyWithImpl<$Res>;
  $Res call({List<Album> albums});
}

/// @nodoc
class __$$_AlbumsSuccessStateCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res>
    implements _$$_AlbumsSuccessStateCopyWith<$Res> {
  __$$_AlbumsSuccessStateCopyWithImpl(
      _$_AlbumsSuccessState _value, $Res Function(_$_AlbumsSuccessState) _then)
      : super(_value, (v) => _then(v as _$_AlbumsSuccessState));

  @override
  _$_AlbumsSuccessState get _value => super._value as _$_AlbumsSuccessState;

  @override
  $Res call({
    Object? albums = freezed,
  }) {
    return _then(_$_AlbumsSuccessState(
      albums == freezed
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
    ));
  }
}

/// @nodoc

class _$_AlbumsSuccessState implements _AlbumsSuccessState {
  const _$_AlbumsSuccessState(final List<Album> albums) : _albums = albums;

  final List<Album> _albums;
  @override
  List<Album> get albums {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  String toString() {
    return 'AlbumsState.success(albums: $albums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumsSuccessState &&
            const DeepCollectionEquality().equals(other._albums, _albums));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_albums));

  @JsonKey(ignore: true)
  @override
  _$$_AlbumsSuccessStateCopyWith<_$_AlbumsSuccessState> get copyWith =>
      __$$_AlbumsSuccessStateCopyWithImpl<_$_AlbumsSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Album> albums) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(albums);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call(albums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(albums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumsInitialState value) initial,
    required TResult Function(_AlbumsInProgressState value) inProgress,
    required TResult Function(_AlbumsSuccessState value) success,
    required TResult Function(_AlbumsFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AlbumsSuccessState implements AlbumsState {
  const factory _AlbumsSuccessState(final List<Album> albums) =
      _$_AlbumsSuccessState;

  List<Album> get albums => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AlbumsSuccessStateCopyWith<_$_AlbumsSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AlbumsFailureStateCopyWith<$Res> {
  factory _$$_AlbumsFailureStateCopyWith(_$_AlbumsFailureState value,
          $Res Function(_$_AlbumsFailureState) then) =
      __$$_AlbumsFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_AlbumsFailureStateCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res>
    implements _$$_AlbumsFailureStateCopyWith<$Res> {
  __$$_AlbumsFailureStateCopyWithImpl(
      _$_AlbumsFailureState _value, $Res Function(_$_AlbumsFailureState) _then)
      : super(_value, (v) => _then(v as _$_AlbumsFailureState));

  @override
  _$_AlbumsFailureState get _value => super._value as _$_AlbumsFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_AlbumsFailureState(
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

class _$_AlbumsFailureState implements _AlbumsFailureState {
  const _$_AlbumsFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AlbumsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumsFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_AlbumsFailureStateCopyWith<_$_AlbumsFailureState> get copyWith =>
      __$$_AlbumsFailureStateCopyWithImpl<_$_AlbumsFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Album> albums) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Album> albums)? success,
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
    required TResult Function(_AlbumsInitialState value) initial,
    required TResult Function(_AlbumsInProgressState value) inProgress,
    required TResult Function(_AlbumsSuccessState value) success,
    required TResult Function(_AlbumsFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumsInitialState value)? initial,
    TResult Function(_AlbumsInProgressState value)? inProgress,
    TResult Function(_AlbumsSuccessState value)? success,
    TResult Function(_AlbumsFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AlbumsFailureState implements AlbumsState {
  const factory _AlbumsFailureState(final Failure failure) =
      _$_AlbumsFailureState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AlbumsFailureStateCopyWith<_$_AlbumsFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
