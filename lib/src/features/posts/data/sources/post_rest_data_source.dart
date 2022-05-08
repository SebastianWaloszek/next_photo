import 'package:next_blog/src/features/posts/data/models/post_model.dart';
import 'package:next_blog/src/features/posts/data/sources/post_data_source.dart';

/// REST implementation of the post data source.
class PostRestDataSource implements PostDataSource {
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPost({required int id}) {
    // TODO: implement getPost
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getUserPosts({required int userId}) {
    // TODO: implement getUserPosts
    throw UnimplementedError();
  }
}
