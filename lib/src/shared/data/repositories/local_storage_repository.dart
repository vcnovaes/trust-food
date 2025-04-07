import 'package:convenience_types/errors/storage_error.dart';
import 'package:convenience_types/types/maybe.dart';
import 'package:convenience_types/types/result.dart';
import 'package:trust_food/src/shared/data/errors/local_storage_erros.dart';
import 'package:trust_food/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:universal_html/html.dart' as html;

class LocalStorageRepository {
  // Use web localStorage
  final storage = html.window.localStorage;

  LocalStorageRepository();

  String? _token;
  Maybe<String> get token => Maybe.from(_token);

  Future<Result> delete({required StorageKey key}) async {
    try {
      storage.remove(key.keyName);
      return const Success(true);
    } catch (e) {
      return Failure(StorageUnknownError(msg: 'Failed to delete key'));
    }
  }

  Future<Result> deleteAll() async {
    try {
      storage.clear();
      _token = null;
      return const Success(true);
    } catch (e) {
      return Failure(StorageUnknownError(msg: 'Failed to delete all keys'));
    }
  }

  Future<Result<String>> read({required StorageKey key}) async {
    try {
      String? value = storage[key.keyName];
      if (key == StorageKey.authToken && _token == null) {
        _token = value;
      }
      if (value == null) {
        return Failure(KeyNotFoundError(key: Just(key)));
      } else {
        return Success(value);
      }
    } catch (e) {
      return Failure(StorageUnknownError(msg: 'Failed to read key'));
    }
  }

  Future<Result> write({
    required StorageKey key,
    Maybe<String> value = const Nothing(),
  }) async {
    try {
      final String valueToStore = value.when(
        just: (val) => val,
        nothing: () => '',
      );

      storage[key.keyName] = valueToStore;

      if (key == StorageKey.authToken) {
        _token = valueToStore;
      }

      return const Success(true);
    } catch (e) {
      return Failure(StorageUnknownError(msg: 'Failed to write key: $e'));
    }
  }
}
