part of 'album_cubit.dart';

/// The cubit state for a single album.
@freezed
class AlbumState with _$AlbumState {
  /// Creates initial cubit state for an album.
  const factory AlbumState.initial() = _AlbumInitialState;

  /// Creates loading cubit state for an album.
  const factory AlbumState.inProgress() = _AlbumInProgressState;

  /// Creates loading succeeded cubit state for an album.
  const factory AlbumState.success(Album album) = _AlbumSuccessState;

  /// Creates loading failed cubit state for an album.
  const factory AlbumState.failure(Failure failure) = _AlbumFailureState;
}
