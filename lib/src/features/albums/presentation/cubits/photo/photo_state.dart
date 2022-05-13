part of 'photo_cubit.dart';

/// The cubit state for a single photo.
@freezed
class PhotoState with _$PhotoState {
  /// Creates initial cubit state for a photo.
  const factory PhotoState.initial() = _PhotoInitialState;

  /// Creates loading cubit state for a photo.
  const factory PhotoState.inProgress() = _PhotoInProgressState;

  /// Creates loading succeeded cubit state for a photo.
  const factory PhotoState.success(Photo photo) = _PhotoSuccessState;

  /// Creates loading failed cubit state for a photo.
  const factory PhotoState.failure(Failure failure) = _PhotoFailureState;
}
