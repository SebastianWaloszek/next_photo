import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/posts/domain/entities/post.dart';
import 'package:next_blog/src/features/posts/domain/use_cases/get_post.dart';

part 'post_cubit.freezed.dart';
part 'post_state.dart';

/// The cubit for keeping the state of a single [Post] object.
@injectable
class PostCubit extends Cubit<PostState> {
  /// Creates a post cubit.
  PostCubit({
    required GetPost getPost,
  })  : _getPost = getPost,
        super(const PostState.initial());

  final GetPost _getPost;

  /// Loads an post for a given [postId].
  Future<void> getPost(PostId postId) async {
    emit(
      const PostState.inProgress(),
    );

    final result = await _getPost(
      GetPostParams(postId: postId),
    );

    emit(
      result.when(
        PostState.success,
        failure: PostState.failure,
      ),
    );
  }
}
