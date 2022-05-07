import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_blog/src/base/domain/entities/id.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

part 'post.freezed.dart';

/// A post made by a user.
///
/// Each post has a [title] and a [body].
@freezed
class Post with _$Post {
  /// Creates a post.
  const factory Post({
    required PostId id,
    required UserId userId,
    required String title,
    required String body,
  }) = _Post;
}

/// The id of a post.
class PostId extends Id<int> {
  /// Creates a post id for a specific [value].
  const PostId(int value) : super(value);
}
