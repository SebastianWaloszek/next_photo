// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Album {
  AlbumId get id => throw _privateConstructorUsedError;
  UserId get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res>;
  $Res call({AlbumId id, UserId userId, String title});
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res> implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  final Album _value;
  // ignore: unused_field
  final $Res Function(Album) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AlbumId,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$AlbumCopyWith(_Album value, $Res Function(_Album) then) =
      __$AlbumCopyWithImpl<$Res>;
  @override
  $Res call({AlbumId id, UserId userId, String title});
}

/// @nodoc
class __$AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res>
    implements _$AlbumCopyWith<$Res> {
  __$AlbumCopyWithImpl(_Album _value, $Res Function(_Album) _then)
      : super(_value, (v) => _then(v as _Album));

  @override
  _Album get _value => super._value as _Album;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
  }) {
    return _then(_Album(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AlbumId,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Album implements _Album {
  const _$_Album({required this.id, required this.userId, required this.title});

  @override
  final AlbumId id;
  @override
  final UserId userId;
  @override
  final String title;

  @override
  String toString() {
    return 'Album(id: $id, userId: $userId, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Album &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$AlbumCopyWith<_Album> get copyWith =>
      __$AlbumCopyWithImpl<_Album>(this, _$identity);
}

abstract class _Album implements Album {
  const factory _Album(
      {required final AlbumId id,
      required final UserId userId,
      required final String title}) = _$_Album;

  @override
  AlbumId get id => throw _privateConstructorUsedError;
  @override
  UserId get userId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumCopyWith<_Album> get copyWith => throw _privateConstructorUsedError;
}
