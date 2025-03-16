import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/login/domain/usecase/login_usecase.dart';
import 'package:trust_food/src/shared/shared_providers.dart';

final loginUsecaseProvider = AutoDisposeProvider(
  (ref) => LoginUsecase(
    localStorageRepository: ref.read(
      SharedProviders.localStorageRepositoryProvider,
    ),
  ),
);
