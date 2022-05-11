import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/features/users/data/repositories/user_repository_impl.dart';
import 'package:next_blog/src/features/users/data/sources/user_data_source.dart';
import 'package:next_blog/src/features/users/domain/repositories/user_repository.dart';

import '../../../../../util/mock_classes.dart';
import '../../domain/users_domain_test_data.dart';
import '../users_data_test_data.dart';

void main() {
  late Logger logger;
  late UserDataSource dataSource;

  late UserRepository repository;

  setUp(() {
    logger = LoggerMock();
    dataSource = UserDataSourceMock();

    repository = UserRepositoryImpl(
      logger: logger,
      dataSource: dataSource,
    );
  });

  group(
    '$UserRepositoryImpl',
    () {
      test(
        'should return result with users when getting all users succeeds',
        () async {
          when(() => dataSource.getAllUsers()).thenAnswer(
            (_) async => usersModels,
          );

          final result = await repository.getAllUsers();

          result.when(
            (value) {
              expect(value, users);
              verifyZeroInteractions(logger);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return result with failure when getting all users fails',
        () async {
          when(() => dataSource.getAllUsers()).thenThrow('Failure');

          final result = await repository.getAllUsers();

          result.when(
            (value) => throw value,
            failure: (failure) {
              verify(
                () => logger.e(
                  'Getting all users has failed!',
                  'Failure',
                  any(),
                ),
              ).called(1);
              verifyNoMoreInteractions(logger);
            },
          );
        },
      );

      test(
        'should return result with user when getting user succeeds',
        () async {
          when(() => dataSource.getUser(id: 1)).thenAnswer(
            (_) async => userModel1,
          );

          final result = await repository.getUser(userId1);

          result.when(
            (value) {
              expect(value, user1);
              verifyZeroInteractions(logger);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return failure result when getting user fails',
        () async {
          when(() => dataSource.getUser(id: 1)).thenThrow('Failure');

          final result = await repository.getUser(userId1);

          result.when(
            (value) => throw value,
            failure: (failure) {
              verify(
                () => logger.e(
                  'Getting user 1 has failed!',
                  'Failure',
                  any(),
                ),
              ).called(1);
              verifyNoMoreInteractions(logger);
            },
          );
        },
      );
    },
  );
}
