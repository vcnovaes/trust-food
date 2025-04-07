import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:trust_food/src/shared/shared_providers.dart';

final currentUserEmailProvider = FutureProvider<String?>((ref) async {
  final localStorageRepository = ref.read(
    SharedProviders.localStorageRepositoryProvider,
  );
  final result = await localStorageRepository.read(key: StorageKey.userEmail);
  return result.handle(onSuccess: (email) => email, onFailure: (_) => null);
});
