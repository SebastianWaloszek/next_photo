import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_blog/src/base/domain/entities/id.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

part 'album.freezed.dart';

/// A photo album shared by a user.
@freezed
class Album with _$Album {
  /// Creates a user photo album.
  const factory Album({
    required AlbumId id,
    required UserId userId,
    required String title,
  }) = _Album;
}

/// The id of an album.
class AlbumId extends Id<int> {
  /// Creates an album id for a specific [value].
  const AlbumId(int value) : super(value);
}
