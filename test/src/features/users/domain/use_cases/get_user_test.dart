import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/users/domain/repositories/user_repository.dart';
import 'package:next_photo/src/features/users/domain/use_cases/get_user.dart';

import '../../../../../util/mock_classes.dart';
import '../users_domain_test_data.dart';

void main() {
  late UserRepository repository;
  late GetUser getUser;

  setUp(() {
    repository = UserRepositoryMock();
    getUser = GetUser(repository: repository);
  });

  group(
    '$GetUser',
    () {
      test(
        'should return success result',
        () async {
          when(() => repository.getUser(userId1)).thenAnswer(
            (_) async => const Result(user1),
          );

          final result = await getUser(
            GetUserParams(userId: userId1),
          );

          result.when(
            (value) {
              expect(value, user1);
              verify(() => repository.getUser(userId1)).called(1);
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

          when(() => repository.getUser(userId1)).thenAnswer(
            (_) async => const Result.failure(errorFailure),
          );

          final result = await getUser(
            GetUserParams(userId: userId1),
          );

          result.when(
            (value) => throw value,
            failure: (failure) {
              expect(failure, errorFailure);
              verify(
                () => repository.getUser(userId1),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
          );
        },
      );
    },
  );
}
