part of 'albums_cubit.dart';

/// The cubit state of a list of albums.
@freezed
class AlbumsState with _$AlbumsState {
  /// Creates initial cubit state for albums.
  const factory AlbumsState.initial() = _AlbumsInitialState;

  /// Creates loading cubit state for albums.
  const factory AlbumsState.inProgress() = _AlbumsInProgressState;

  /// Creates loading succeeded cubit state for albums.
  const factory AlbumsState.success(List<Album> albums) = _AlbumsSuccessState;

  /// Creates loading failed cubit state for albums.
  const factory AlbumsState.failure(Failure failure) = _AlbumsFailureState;
}
