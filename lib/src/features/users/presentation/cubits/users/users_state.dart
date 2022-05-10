part of 'users_cubit.dart';

/// The cubit state for a list of users.
@freezed
class UsersState with _$UsersState {
  /// Creates initial cubit state for users.
  const factory UsersState.initial() = _UsersInitialState;

  /// Creates loading cubit state for users.
  const factory UsersState.inProgress() = _UsersInProgressState;

  /// Creates loading succeeded cubit state for users.
  const factory UsersState.success(List<User> users) = _UsersSuccessState;

  /// Creates loading failed cubit state for users.
  const factory UsersState.failure(Failure failure) = _UsersFailureState;
}
