import 'package:injectable/injectable.dart';
import 'package:next_blog/src/features/users/data/models/user_model.dart';
import 'package:next_blog/src/features/users/data/sources/user_data_source.dart';

/// REST implementation of the user data source.
@LazySingleton(as: UserDataSource)
class UserRestDataSource implements UserDataSource {
  @override
  Future<List<UserModel>> getAllUsers() {
    // TODO: implement getAllUsers
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getUser({required int id}) {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
