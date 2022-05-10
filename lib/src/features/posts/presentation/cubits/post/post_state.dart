part of 'post_cubit.dart';

/// The cubit state for a single post.
@freezed
class PostState with _$PostState {
  /// Creates initial cubit state for a post.
  const factory PostState.initial() = _PostInitialState;

  /// Creates loading cubit state for a post.
  const factory PostState.inProgress() = _PostInProgressState;

  /// Creates loading succeeded cubit state for a post.
  const factory PostState.success(Post post) = _PostSuccessState;

  /// Creates loading failed cubit state for a post.
  const factory PostState.failure(Failure failure) = _PostFailureState;
}
