import 'package:convenience_types/convenience_types.dart';
import 'package:dio/dio.dart';
import 'package:trust_food/src/shared/data/miscelaneous/envs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:trust_food/src/shared/data/repositories/local_storage_repository.dart';
import 'package:trust_food/src/shared/domain/models/api_state_model.dart';

class ApiRepository extends StateNotifier<ApiState> {
  ApiRepository({
    required Dio httpClient,
    required LocalStorageRepository localStorageRepository,
    required Env env,
  }) : _httpClient = httpClient,
       _localStorageRepository = localStorageRepository,
       _env = env,
       super(const Unauthenticated());

  final Dio _httpClient;
  // ignore: unused_field
  final LocalStorageRepository _localStorageRepository;
  // ignore: unused_field
  final Env _env;

  _handleErrors(
    HttpError error,
    DioException exception,
    StackTrace stackTrace,
  ) async {
    if (error is HttpUnauthorizedError) {
      state.maybeWhen(authenticated: () => setSignedOut(), orElse: () {});
    }
    if (error is HttpGoneError) {
      state = const Gone();
    }
  }

  Future<void> setSignedOut() async {
    state = const SignedOut();
    _localStorageRepository.delete(key: StorageKey.authToken);
    _localStorageRepository.delete(key: StorageKey.userEmail);
    _localStorageRepository.delete(key: StorageKey.userPassword);
  }

  Future<Result> delete<T>({
    required String url,
    Map<String, dynamic> body = const {},
    Options? options,
  }) async {
    try {
      final Response response = await _httpClient.delete(
        url,
        data: body,
        options: options,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(HttpUnknownError(slug: exception.toString()));
    }
  }

  Future<Result> get<T>({
    required String url,
    Map<String, dynamic> queryParams = const {},
    Options? options,
  }) async {
    try {
      final Response response = await _httpClient.get(
        url,
        queryParameters: queryParams,
        options: options,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (e) {
      return const Failure(
        HttpUnknownError(slug: DefaultErrorMessages.unknownError),
      );
    }
  }

  Future<Result> patch<T>({
    required String url,
    Map<String, dynamic> body = const {},
    Options? options,
  }) async {
    try {
      final Response response = await _httpClient.patch(
        url,
        data: body,
        options: options,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(HttpUnknownError(slug: exception.toString()));
    }
  }

  Future<Result> post<T>({
    required String url,
    Map<String, dynamic> body = const {},
    T? Function(dynamic)? errorResponseSerializer,
    Options? options,
  }) async {
    try {
      final Response response = await _httpClient.post(
        url,
        data: body,
        options: options,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(HttpUnknownError(slug: exception.toString()));
    }
  }

  Future<Result> put<T>({
    required String url,
    Map<String, dynamic> body = const {},
    Options? options,
  }) async {
    try {
      final Response response = await _httpClient.put(
        url,
        data: body,
        options: options,
      );
      return Success(response.data);
    } on DioException catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(
        error: exception,
        stackTrace: stackTrace,
      );
      await _handleErrors(error, exception, stackTrace);
      return Failure(error);
    } catch (exception) {
      return Failure(HttpUnknownError(slug: exception.toString()));
    }
  }
}
