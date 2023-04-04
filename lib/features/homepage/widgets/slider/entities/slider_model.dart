import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_model.freezed.dart';
part 'slider_model.g.dart';

@freezed
class SliderModel with _$SliderModel {
  const factory SliderModel({
    int? id,
    String? name,
    String? image,
    int? order,

    // ignore: invalid_annotation_target
    @JsonKey(name: "click_action") String? clickAction,

    // ignore: invalid_annotation_target
    @JsonKey(name: "product_id") Object? productId,

    // ignore: invalid_annotation_target
    @JsonKey(name: "product_ecomm_category_id") Object? categoryId,
  }) = _SliderModel;

  factory SliderModel.fromJson(Map<String, dynamic> json) =>
      _$SliderModelFromJson(json);
}
