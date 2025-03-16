import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/shared/shared_providers.dart';
import 'package:trust_food/src/splash/domain/usecase/splash_usecase.dart';

final splashUsecaseProvider = AutoDisposeProvider(
  (ref) => SplashUsecase(
    localStorageRepository: ref.read(
      SharedProviders.localStorageRepositoryProvider,
    ),
  ),
);
