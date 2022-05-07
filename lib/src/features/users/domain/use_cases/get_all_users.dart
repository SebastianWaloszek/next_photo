import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';
import 'package:next_blog/src/features/users/domain/repositories/user_repository.dart';

/// A use case for getting all available users.
@LazySingleton()
class GetAllUsers extends AsyncUseCaseWithoutParams<List<User>> {
  /// Creates the use case.
  GetAllUsers({
    required UserRepository repository,
  }) : _repository = repository;

  final UserRepository _repository;

  @override
  Future<Result<List<User>>> call() {
    return _repository.getAllUsers();
  }
}
