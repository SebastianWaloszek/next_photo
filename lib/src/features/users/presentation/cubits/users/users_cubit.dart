import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';
import 'package:next_blog/src/features/users/domain/use_cases/get_all_users.dart';

part 'users_cubit.freezed.dart';
part 'users_state.dart';

/// The cubit for keeping the state of a list of [User] objects.
@injectable
class UsersCubit extends Cubit<UsersState> {
  /// Creates the cubit.
  UsersCubit({
    required GetAllUsers getAllUsers,
  })  : _getAllUsers = getAllUsers,
        super(
          const UsersState.initial(),
        );

  final GetAllUsers _getAllUsers;

  /// Loads the list of all available users.
  Future<void> getAllUsers() async {
    emit(
      const UsersState.inProgress(),
    );

    final result = await _getAllUsers();

    emit(
      result.when(
        UsersState.success,
        failure: UsersState.failure,
      ),
    );
  }
}
