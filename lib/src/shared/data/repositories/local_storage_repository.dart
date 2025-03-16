import 'package:convenience_types/errors/storage_error.dart';
import 'package:convenience_types/types/maybe.dart';
import 'package:convenience_types/types/result.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:trust_food/src/shared/data/errors/local_storage_erros.dart';
import 'package:trust_food/src/shared/data/miscelaneous/storage_keys.dart';

class LocalStorageRepository {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  LocalStorageRepository();

  String? _token;
  Maybe<String> get token => Maybe.from(_token);

  Future<Result> delete({required StorageKey key}) async {
    try {
      await _secureStorage.delete(key: key.keyName);
      return const Success(true);
    } catch (e) {
      print('Error deleting key ${key.keyName}: $e');
      return Failure(StorageUnknownError(msg: 'Failed to delete key'));
    }
  }

  Future<Result> deleteAll() async {
    try {
      await _secureStorage.deleteAll();
      _token = null;
      return const Success(true);
    } catch (e) {
      print('Error deleting all keys: $e');
      return Failure(StorageUnknownError(msg: 'Failed to delete all keys'));
    }
  }

  Future<Result<String>> read({required StorageKey key}) async {
    try {
      String? value = await _secureStorage.read(key: key.keyName);
      if (key == StorageKey.authToken && _token == null) {
        _token = value;
      }
      if (value == null) {
        return Failure(KeyNotFoundError(key: Just(key)));
      } else {
        return Success(value);
      }
    } catch (e) {
      print('Error reading key ${key.keyName}: $e');
      return Failure(StorageUnknownError(msg: 'Failed to read key'));
    }
  }

  Future<Result> write({
    required StorageKey key,
    Maybe<String> value = const Nothing(),
  }) async {
    try {
      await _secureStorage.write(
        key: key.keyName,
        value: value.getOrElse(null),
      );
      if (key == StorageKey.authToken && _token == null) {
        _token = value.getOrElse('');
      }
      return const Success(true);
    } catch (e) {
      print('Error writing key ${key.keyName}: $e');
      return Failure(StorageUnknownError(msg: 'Failed to write key'));
    }
  }
}
