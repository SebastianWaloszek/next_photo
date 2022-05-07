import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/posts/domain/entities/post.dart';
import 'package:next_blog/src/features/posts/domain/use_cases/get_all_posts.dart';
import 'package:next_blog/src/features/posts/domain/use_cases/get_user_posts.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

part 'posts_cubit.freezed.dart';
part 'posts_state.dart';

/// The cubit for keeping the state of a list of [Post] objects.
@injectable
class PostsCubit extends Cubit<PostsState> {
  /// Creates a posts cubit.
  PostsCubit({
    required GetAllPosts getAllPosts,
    required GetUserPosts getUserPosts,
  })  : _getAllPosts = getAllPosts,
        _getUserPosts = getUserPosts,
        super(
          const PostsState.initial(),
        );

  final GetAllPosts _getAllPosts;
  final GetUserPosts _getUserPosts;

  /// Loads the list of all available posts.
  Future<void> getAllPosts() async {
    emit(
      const PostsState.inProgress(),
    );

    final result = await _getAllPosts();

    emit(
      result.when(
        PostsState.success,
        failure: PostsState.failure,
      ),
    );
  }

  /// Loads the list of all posts of a user.
  Future<void> getUserPosts(UserId userId) async {
    emit(
      const PostsState.inProgress(),
    );

    final result = await _getUserPosts(
      GetUserPostsParams(userId: userId),
    );

    emit(
      result.when(
        PostsState.success,
        failure: PostsState.failure,
      ),
    );
  }
}
