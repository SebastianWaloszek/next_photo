import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';
import 'package:next_photo/src/features/users/domain/use_cases/get_user.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

/// The cubit for keeping the state of a single [User] object.
@injectable
class UserCubit extends Cubit<UserState> {
  /// Creates the cubit.
  UserCubit({
    required GetUser getUser,
  })  : _getUser = getUser,
        super(const UserState.initial());

  final GetUser _getUser;

  /// Loads a user for a given [userId].
  Future<void> getUser(UserId userId) async {
    emit(
      const UserState.inProgress(),
    );

    final result = await _getUser(
      GetUserParams(userId: userId),
    );

    emit(
      result.when(
        UserState.success,
        failure: UserState.failure,
      ),
    );
  }
}
