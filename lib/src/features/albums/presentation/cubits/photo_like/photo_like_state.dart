part of 'photo_like_cubit.dart';

/// The cubit state for the process of liking a photo.
@freezed
class PhotoLikeState with _$PhotoLikeState {
  /// Creates initial cubit state for liking a photo.
  const factory PhotoLikeState.initial() = _PhotoLikeInitialState;

  /// Creates loading cubit state for liking a photo.
  ///
  /// Contains true if photo is being liked and false if unliked.
  const factory PhotoLikeState.inProgress({required bool like}) =
      _PhotoLikeInProgressState;

  /// Creates loading succeeded cubit state for liking a photo.
  ///
  /// Contains true if photo was liked and false if it was unliked.
  const factory PhotoLikeState.success({required bool like}) =
      _PhotoLikeSuccessState;

  /// Creates loading failed cubit state for liking a photo.
  const factory PhotoLikeState.failure(Failure failure) =
      _PhotoLikeFailureState;
}
