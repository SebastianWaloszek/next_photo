import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

/// The repository interface for handling users.
abstract class UserRepository {
  /// Returns result with all available users.
  Future<Result<List<User>>> getAllUsers();

  /// Returns result with a single user.
  Future<Result<User>> getUser(UserId userId);
}
