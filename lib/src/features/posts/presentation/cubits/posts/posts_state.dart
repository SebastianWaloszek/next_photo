part of 'posts_cubit.dart';

/// The cubit state of a list of posts.
@freezed
class PostsState with _$PostsState {
  /// Creates initial cubit state for posts.
  const factory PostsState.initial() = _PostsInitialState;

  /// Creates loading cubit state for posts.
  const factory PostsState.inProgress() = _PostsInProgressState;

  /// Creates loading succeeded cubit state for posts.
  const factory PostsState.success(List<Post> posts) = _PostsSuccessState;

  /// Creates loading failed cubit state for posts.
  const factory PostsState.failure(Failure failure) = _PostsFailureState;
}
