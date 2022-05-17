import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';
import 'package:next_photo/src/features/users/domain/use_cases/get_all_users.dart';
import 'package:next_photo/src/features/users/presentation/cubits/users/users_cubit.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/mock_classes.dart';
import '../../../../base/domain/result.dart';
import '../../domain/users_domain_test_data.dart';

void main() {
  late GetAllUsers getAllUsers;
  late UsersCubit cubit;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    getAllUsers = GetUsersMock();
    cubit = UsersCubit(getAllUsers: getAllUsers);
  });

  void whenGetAllUsers(Result<List<User>> result) {
    when(
      () => getAllUsers(),
    ).thenAnswer(
      (_) async => result,
    );
  }

  group(
    '$UsersCubit',
    () {
      blocTest<UsersCubit, UsersState>(
        'should emit in progress & success state when getting all users succeeds',
        build: () {
          whenGetAllUsers(Result(users));
          return cubit;
        },
        act: (cubit) => cubit.getAllUsers(),
        verify: (_) => verify(getAllUsers).called(1),
        expect: () => [
          const UsersState.inProgress(),
          UsersState.success(users),
        ],
      );

      blocTest<UsersCubit, UsersState>(
        'should emit in progress & failure state when getting all users fails',
        build: () {
          whenGetAllUsers(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.getAllUsers(),
        verify: (_) => verify(getAllUsers).called(1),
        expect: () => [
          const UsersState.inProgress(),
          const UsersState.failure(failure),
        ],
      );
    },
  );
}
