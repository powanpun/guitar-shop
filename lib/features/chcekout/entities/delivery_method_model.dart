import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_method_model.freezed.dart';
part 'delivery_method_model.g.dart';

@freezed
class DeliveryMethodModel with _$DeliveryMethodModel {
  const factory DeliveryMethodModel({
    int? id,
    String? name,
    // ignore: invalid_annotation_target
    @JsonKey(name: "fixed_price") num? fixedPrice,
  }) = _DeliveryMethodModel;

  factory DeliveryMethodModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryMethodModelFromJson(json);
}
