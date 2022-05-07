import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/users/data/mappers/user_from_model.dart';
import 'package:next_blog/src/features/users/data/sources/user_data_source.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';
import 'package:next_blog/src/features/users/domain/repositories/user_repository.dart';

/// The implementation for the user repository.
@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  /// Creates user repository implementation.
  UserRepositoryImpl({
    required Logger logger,
    required UserDataSource dataSource,
  })  : _logger = logger,
        _dataSource = dataSource;

  final Logger _logger;

  final UserDataSource _dataSource;

  @override
  Future<Result<List<User>>> getAllUsers() async {
    try {
      final usersModels = await _dataSource.getAllUsers();
      final users = usersModels.map<User>(UserFromModel()).toList();
      return Result(users);
    } catch (e, s) {
      _logger.e('Getting all users has failed!', e, s);
      return Result.failure(Failure(e, s));
    }
  }

  @override
  Future<Result<User>> getUser(UserId userId) async {
    try {
      final userModel = await _dataSource.getUser(id: userId.value);
      final user = UserFromModel()(userModel);
      return Result(user);
    } catch (e, s) {
      _logger.e('Getting user ${userId.value} has failed!', e, s);
      return Result.failure(Failure(e, s));
    }
  }
}
