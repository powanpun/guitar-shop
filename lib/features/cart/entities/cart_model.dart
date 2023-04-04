import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    int? id,
    String? name,

    // ignore: invalid_annotation_target
    @JsonKey(name: "product_uom_qty") num? totalQuantity,
    // ignore: invalid_annotation_target
    @JsonKey(name: "price_unit") num? priceUnit,
    // ignore: invalid_annotation_target
    @JsonKey(name: "price_subtotal") num? priceSubTotal,

    // ignore: invalid_annotation_target
    @JsonKey(name: "product_id") List<Object>? productId,

    // ignore: invalid_annotation_target
    @JsonKey(name: "price_tax") double? priceTax,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
