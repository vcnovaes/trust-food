part of 'login_usecase.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login({required String email}) = _Login;
}
