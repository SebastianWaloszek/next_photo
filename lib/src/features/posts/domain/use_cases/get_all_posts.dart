import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/posts/domain/entities/post.dart';
import 'package:next_blog/src/features/posts/domain/repositories/post_repository.dart';

/// A use case for getting all available user posts.
@LazySingleton()
class GetAllPosts extends AsyncUseCaseWithoutParams<List<Post>> {
  /// Creates the use case.
  GetAllPosts({
    required PostRepository repository,
  }) : _repository = repository;

  final PostRepository _repository;

  @override
  Future<Result<List<Post>>> call() {
    return _repository.getAllPosts();
  }
}
