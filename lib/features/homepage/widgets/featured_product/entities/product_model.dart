import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    // String? name,
    String? image_1920,
    Object? description,
    // ignore: invalid_annotation_target
    @JsonKey(name: "list_price") num? listPrice,
    // ignore: invalid_annotation_target
    @JsonKey(name: "display_name") String? name,
    // ignore: invalid_annotation_target
    @JsonKey(name: "product_variant_image_ids") List<String>? listImage,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
