import 'package:next_photo/src/features/users/data/models/user_model.dart';

/// The data source interface for handling user models.
abstract class UserDataSource {
  /// Returns list with all available user models.
  Future<List<UserModel>> getAllUsers();

  /// Returns a single user model.
  Future<UserModel> getUser({required int userId});
}
