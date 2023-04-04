// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SliderModel _$$_SliderModelFromJson(Map<String, dynamic> json) =>
    _$_SliderModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      order: json['order'] as int?,
      clickAction: json['click_action'] as String?,
      productId: json['product_id'],
      categoryId: json['product_ecomm_category_id'],
    );

Map<String, dynamic> _$$_SliderModelToJson(_$_SliderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'order': instance.order,
      'click_action': instance.clickAction,
      'product_id': instance.productId,
      'product_ecomm_category_id': instance.categoryId,
    };
