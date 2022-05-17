import 'package:injectable/injectable.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/base/domain/use_cases/use_case.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';
import 'package:next_photo/src/features/users/domain/repositories/user_repository.dart';

/// A use case for getting a single user.
@LazySingleton()
class GetUser extends AsyncUseCaseWithParams<User, GetUserParams> {
  /// Creates the use case.
  GetUser({
    required UserRepository repository,
  }) : _repository = repository;

  final UserRepository _repository;

  @override
  Future<Result<User>> call(GetUserParams params) {
    return _repository.getUser(params.userId);
  }
}

/// Parameters for [GetUser] use case.
class GetUserParams extends Params {
  /// Creates params.
  GetUserParams({
    required this.userId,
  });

  /// The id of a user.
  final UserId userId;

  @override
  List<Object?> get props => [userId];
}
