import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/users/domain/repositories/user_repository.dart';
import 'package:next_blog/src/features/users/domain/use_cases/get_all_users.dart';

import '../../../../../util/mock_classes.dart';
import '../users_domain_test_data.dart';

void main() {
  late UserRepository repository;
  late GetAllUsers getAllUsers;

  setUp(() {
    repository = UserRepositoryMock();
    getAllUsers = GetAllUsers(repository: repository);
  });

  group(
    '$GetAllUsers',
    () {
      test(
        'should return success result',
        () async {
          when(() => repository.getAllUsers()).thenAnswer(
            (_) async => Result(users),
          );

          final result = await getAllUsers();

          result.when(
            (value) {
              expect(value, users);
              verify(() => repository.getAllUsers()).called(1);
              verifyNoMoreInteractions(repository);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return failure result',
        () async {
          const errorFailure = Failure('Error');

          when(() => repository.getAllUsers()).thenAnswer(
            (_) async => const Result.failure(errorFailure),
          );

          final result = await getAllUsers();

          result.when(
            (value) => throw value,
            failure: (failure) {
              expect(failure, errorFailure);
              verify(
                () => repository.getAllUsers(),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
          );
        },
      );
    },
  );
}
