import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String email,
    required String phone,
    required String firstName,
    required String lastName,
    required String userType,
  }) = _UserModel;
}
