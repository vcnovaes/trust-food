import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_state_model.freezed.dart';

@freezed
class ApiState with _$ApiState {
  const factory ApiState.unauthenticated() = Unauthenticated;
  const factory ApiState.authenticated() = Authenticated;
  const factory ApiState.signedOut() = SignedOut;
  const factory ApiState.authInit() = AuthInit;
  const factory ApiState.gone() = Gone;
}
