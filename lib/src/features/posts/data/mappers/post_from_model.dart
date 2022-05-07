import 'package:next_blog/src/base/data/mappers/mapper.dart';
import 'package:next_blog/src/features/posts/data/models/post_model.dart';
import 'package:next_blog/src/features/posts/domain/entities/post.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

/// Mapper for creating a [Post] entity from model.
class PostFromModel implements Mapper<PostModel, Post> {
  @override
  Post call(PostModel post) {
    return Post(
      id: PostId(post.id),
      userId: UserId(post.userId),
      title: post.title ?? '',
      body: post.body ?? '',
    );
  }
}
