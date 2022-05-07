import 'package:next_blog/src/features/posts/data/models/post_model.dart';

/// The data source interface for handling post models.
abstract class PostDataSource {
  /// Returns all available posts models.
  Future<List<PostModel>> getAllPosts();

  /// Returns a single post model.
  Future<PostModel> getPost({required int id});

  /// Returns all posts models from a given user.
  Future<List<PostModel>> getUserPosts({required int userId});
}
