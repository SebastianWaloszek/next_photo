part of 'photos_cubit.dart';

/// The cubit state of a list of photos.
@freezed
class PhotosState with _$PhotosState {
  /// Creates initial cubit state for photos.
  const factory PhotosState.initial() = _PhotosInitialState;

  /// Creates loading cubit state for photos.
  const factory PhotosState.inProgress() = _PhotosInProgressState;

  /// Creates loading succeeded cubit state for photos.
  const factory PhotosState.success(List<Photo> photos) = _PhotosSuccessState;

  /// Creates loading failed cubit state for photos.
  const factory PhotosState.failure(Failure failure) = _PhotosFailureState;
}
