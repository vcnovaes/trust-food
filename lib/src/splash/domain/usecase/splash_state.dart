part of 'splash_usecase.dart';

@freezed
class SplashState with _$SplashState {
  const SplashState._();
  const factory SplashState({
    required RequestStatus authRequestStatus,
    required UserType userType,
  }) = _SplashState;

  factory SplashState.initial() =>
      const SplashState(authRequestStatus: Idle(), userType: UserType.buyer());
}
