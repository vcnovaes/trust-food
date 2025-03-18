part of 'login_usecase.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState({required RequestStatus loginRequestStatus}) =
      _LoginState;

  factory LoginState.initial() => const LoginState(loginRequestStatus: Idle());
}
