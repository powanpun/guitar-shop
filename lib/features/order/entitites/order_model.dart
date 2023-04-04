import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    int? id,
    String? name,
    String? state,
    // ignore: invalid_annotation_target
    @JsonKey(name: "date_order") String? dateOrder,
    // ignore: invalid_annotation_target
    @JsonKey(name: "amount_total") num? amountTotal,
    // ignore: invalid_annotation_target
    @JsonKey(name: "product_ids") List<int>? productIds,
    // ignore: invalid_annotation_target
    @JsonKey(name: "line_ids") List<int>? lineIds,
    // ignore: invalid_annotation_target
    @JsonKey(name: "amount_untaxed") double? amountUntaxed,
    // ignore: invalid_annotation_target
    @JsonKey(name: "amount_tax") double? amountTax,
    // ignore: invalid_annotation_target
    @JsonKey(name: "amount_delivery") double? amountDelivery,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
