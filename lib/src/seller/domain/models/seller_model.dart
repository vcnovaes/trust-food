import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trust_food/src/seller/domain/models/work_scale_model.dart';

part 'seller_model.freezed.dart';

@freezed
class SellerModel with _$SellerModel {
  const SellerModel._();
  const factory SellerModel({
    required int id,
    required String username,
    required String email,
    required String phone,
    required String profileImage,
    bool? publicContact,
    required WorkScaleModel workScale,
  }) = _SellerModel;
}
