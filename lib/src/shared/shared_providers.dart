import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/shared/data/miscelaneous/envs.dart';
import 'package:trust_food/src/shared/data/repositories/api_repository.dart';
import 'package:trust_food/src/shared/data/repositories/local_storage_repository.dart';
import 'package:trust_food/src/shared/design/theme.dart';
import 'package:trust_food/src/shared/domain/models/api_state_model.dart';

class SharedProviders {
  static final Provider<Dio> httpClientProvider = Provider(
    (ref) => Dio(BaseOptions(baseUrl: Env().baseUrl)),
  );

  static final themeNotifierProvider =
      StateNotifierProvider<ThemeNotifier, ThemeData>((ref) => ThemeNotifier());

  static final Provider<FlutterSecureStorage> flutterSecureStorageProvider =
      Provider((ref) => FlutterSecureStorage());

  static final Provider<LocalStorageRepository> localStorageRepositoryProvider =
      Provider(
        (ref) => LocalStorageRepository(
          // secureStorage: ref.read(flutterSecureStorageProvider),
        ),
      );

  static final StateNotifierProvider<ApiRepository, ApiState>
  apiRepositoryProvider = StateNotifierProvider(
    (ref) => ApiRepository(
      httpClient: ref.watch(SharedProviders.httpClientProvider),
      localStorageRepository: ref.read(localStorageRepositoryProvider),
      env: Env(),
    ),
  );
}
