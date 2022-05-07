import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/posts/domain/entities/post.dart';
import 'package:next_blog/src/features/posts/domain/repositories/post_repository.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

/// A use case for getting all posts of a user.
@LazySingleton()
class GetUserPosts
    extends AsyncUseCaseWithParams<List<Post>, GetUserPostsParams> {
  /// Creates the use case.
  GetUserPosts({
    required PostRepository repository,
  }) : _repository = repository;

  final PostRepository _repository;

  @override
  Future<Result<List<Post>>> call(GetUserPostsParams params) {
    return _repository.getUserPosts(params.userId);
  }
}

/// Parameters for [GetUserPosts] use case.
class GetUserPostsParams extends Params {
  /// Creates params.
  GetUserPostsParams({
    required this.userId,
  });

  /// The id of a user.
  final UserId userId;

  @override
  List<Object?> get props => [userId];
}
