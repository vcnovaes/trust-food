import 'package:convenience_types/convenience_types.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trust_food/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:trust_food/src/shared/data/repositories/local_storage_repository.dart';
import 'package:trust_food/src/shared/domain/types/user_type.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_usecase.freezed.dart';

class SplashUsecase extends Bloc<SplashEvent, SplashState> {
  final LocalStorageRepository _localStorageRepository;

  SplashUsecase({required LocalStorageRepository localStorageRepository})
    : _localStorageRepository = localStorageRepository,
      super(SplashState.initial()) {
    on<SplashEvent>((event, emit) async {
      await event.map(started: (event) => _onStarted(event, emit));
    });
  }

  _onStarted(_Started event, Emitter<SplashState> emit) async {
    emit(state.copyWith(authRequestStatus: const Loading()));

    try {
      final tokenResult = await _localStorageRepository.read(
        key: StorageKey.authToken,
      );
      final emailResult = await _localStorageRepository.read(
        key: StorageKey.userEmail,
      );

      if (tokenResult.isFailure || emailResult.isFailure) {
        emit(
          state.copyWith(authRequestStatus: const Failed(AppUnknownError())),
        );
        return;
      }

      await Future.delayed(const Duration(milliseconds: 1000));

      if (emailResult.asSuccess.data == "seller@email.com") {
        emit(
          state.copyWith(
            authRequestStatus: const Succeeded(true),
            userType: UserType.seller(),
          ),
        );
      } else {
        emit(
          state.copyWith(
            authRequestStatus: const Succeeded(true),
            userType: UserType.buyer(),
          ),
        );
      }
    } catch (error) {
      emit(state.copyWith(authRequestStatus: const Failed(AppUnknownError())));
    }
  }
}
