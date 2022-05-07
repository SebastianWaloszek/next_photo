import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/posts/domain/entities/post.dart';
import 'package:next_blog/src/features/posts/domain/repositories/post_repository.dart';

/// A use case for getting a single user post.
@LazySingleton()
class GetPost extends UseCaseWithParams<Post, GetPostParams> {
  /// Creates the use case.
  GetPost({
    required PostRepository repository,
  }) : _repository = repository;

  final PostRepository _repository;

  @override
  Result<Post> call(GetPostParams params) {
    return _repository.getPost(params.postId);
  }
}

/// Parameters for [GetPost] use case.
class GetPostParams extends Params {
  /// Creates params.
  GetPostParams({
    required this.postId,
  });

  /// The id of a post.
  final PostId postId;

  @override
  List<Object?> get props => [postId];
}
