import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/posts/domain/entities/post.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

/// The repository interface for handling user posts.
abstract class PostRepository {
  /// Returns result with all available posts.
  Future<Result<List<Post>>> getAllPosts();

  /// Returns result with a single post.
  Future<Result<Post>> getPost(PostId id);

  /// Returns result with all posts from a given user.
  Future<Result<List<Post>>> getUserPosts(UserId userId);
}
