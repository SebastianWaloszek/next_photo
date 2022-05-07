import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/posts/data/mappers/post_from_model.dart';
import 'package:next_blog/src/features/posts/data/sources/post_data_source.dart';
import 'package:next_blog/src/features/posts/domain/entities/post.dart';
import 'package:next_blog/src/features/posts/domain/repositories/post_repository.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

/// The implementation for the post repository.
@LazySingleton(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  /// Creates post repository implementation.
  PostRepositoryImpl({
    required Logger logger,
    required PostDataSource dataSource,
  })  : _logger = logger,
        _dataSource = dataSource;

  final Logger _logger;

  final PostDataSource _dataSource;

  @override
  Future<Result<List<Post>>> getAllPosts() async {
    try {
      final postsModels = await _dataSource.getAllPosts();
      final posts = postsModels.map<Post>(PostFromModel()).toList();
      return Result(posts);
    } catch (e, s) {
      _logger.e('Getting all posts has failed!', e, s);
      return Result.failure(Failure(e, s));
    }
  }

  @override
  Future<Result<Post>> getPost(PostId id) async {
    try {
      final postModel = await _dataSource.getPost(id: id.value);
      final post = PostFromModel()(postModel);
      return Result(post);
    } catch (e, s) {
      _logger.e('Getting post ${id.value} has failed!', e, s);
      return Result.failure(Failure(e, s));
    }
  }

  @override
  Future<Result<List<Post>>> getUserPosts(UserId userId) async {
    try {
      final albumsModels = await _dataSource.getUserPosts(
        userId: userId.value,
      );
      final albums = albumsModels.map<Post>(PostFromModel()).toList();
      return Result(albums);
    } catch (e, s) {
      _logger.e('Getting posts for user ${userId.value} has failed!', e, s);
      return Result.failure(Failure(e, s));
    }
  }
}
