part of 'user_cubit.dart';

/// The cubit state of a single user.
@freezed
class UserState with _$UserState {
  /// Creates initial cubit state for a user.
  const factory UserState.initial() = _UserInitialState;

  /// Creates loading cubit state for a user.
  const factory UserState.inProgress() = _UserInProgressState;

  /// Creates loading succeeded cubit state for a user.
  const factory UserState.success(User user) = _UserSuccessState;

  /// Creates loading failed cubit state for a user.
  const factory UserState.failure(Failure failure) = _UserFailureState;
}
