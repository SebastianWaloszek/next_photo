import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';
import 'package:next_photo/src/features/users/domain/use_cases/get_user.dart';
import 'package:next_photo/src/features/users/presentation/cubits/user/user_cubit.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/mock_classes.dart';
import '../../../../base/domain/result.dart';
import '../../domain/users_domain_test_data.dart';

void main() {
  late GetUser getUser;
  late UserCubit cubit;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    getUser = GetUserMock();
    cubit = UserCubit(getUser: getUser);
  });

  void whenGetUser(Result<User> result) {
    when(
      () => getUser(any()),
    ).thenAnswer(
      (_) async => result,
    );
  }

  group(
    '$UserCubit',
    () {
      blocTest<UserCubit, UserState>(
        'should emit in progress & success state when getting user succeeds',
        build: () {
          whenGetUser(const Result(user1));
          return cubit;
        },
        act: (cubit) => cubit.getUser(userId1),
        verify: (_) => verify(
          () => getUser(GetUserParams(userId: userId1)),
        ).called(1),
        expect: () => [
          const UserState.inProgress(),
          const UserState.success(user1),
        ],
      );

      blocTest<UserCubit, UserState>(
        'should emit in progress & failure state when getting user fails',
        build: () {
          whenGetUser(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.getUser(userId1),
        verify: (_) => verify(
          () => getUser(GetUserParams(userId: userId1)),
        ).called(1),
        expect: () => [
          const UserState.inProgress(),
          const UserState.failure(failure),
        ],
      );
    },
  );
}
