import 'package:convenience_types/convenience_types.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trust_food/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:trust_food/src/shared/data/repositories/local_storage_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_usecase.freezed.dart';

class LoginUsecase extends Bloc<LoginEvent, LoginState> {
  final LocalStorageRepository _localStorageRepository;

  LoginUsecase({required LocalStorageRepository localStorageRepository})
    : _localStorageRepository = localStorageRepository,
      super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(login: (event) => _onLogin(event, emit));
    });
  }

  _onLogin(_Login event, Emitter<LoginState> emit) async {
    emit(state.copyWith(loginRequestStatus: const Loading()));
    try {
      final result = await _localStorageRepository.write(
        key: StorageKey.userEmail,
        value: Just(event.email),
      );

      if (result.isSuccess) {
        emit(state.copyWith(loginRequestStatus: const Succeeded(true)));
      } else {
        emit(
          state.copyWith(loginRequestStatus: const Failed(AppUnknownError())),
        );
      }
    } catch (error) {
      emit(state.copyWith(loginRequestStatus: const Failed(AppUnknownError())));
    }
  }
}
