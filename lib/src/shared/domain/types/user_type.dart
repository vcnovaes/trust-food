import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_type.freezed.dart';

@freezed
class UserType with _$UserType {
  const factory UserType.seller() = Seller;
  const factory UserType.buyer() = Buyer;
}
