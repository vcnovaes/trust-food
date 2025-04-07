import 'package:convenience_types/convenience_types.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
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
      // First validate if the email exists in mock data
      final isSeller = mockSellers.any((seller) => seller.email == event.email);
      final isBuyer = mockUsers.any((user) => user.email == event.email);

      if (!isSeller && !isBuyer) {
        emit(
          state.copyWith(
            loginRequestStatus: const Failed(
              AppUnknownError(msg: 'User not found'),
            ),
          ),
        );
        return;
      }

      // Store the email in secure storage
      final result = await _localStorageRepository.write(
        key: StorageKey.userEmail,
        value: Just(event.email),
      );

      result.handle(
        onSuccess: (_) {
          emit(state.copyWith(loginRequestStatus: const Succeeded(true)));
        },
        onFailure: (error) {
          emit(
            state.copyWith(
              loginRequestStatus: Failed(
                AppUnknownError(msg: error.toString()),
              ),
            ),
          );
        },
      );
    } catch (error) {
      emit(
        state.copyWith(
          loginRequestStatus: Failed(AppUnknownError(msg: error.toString())),
        ),
      );
    }
  }
}
