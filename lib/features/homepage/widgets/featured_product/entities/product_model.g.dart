// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      image_1920: json['image_1920'] as String?,
      description: json['description'],
      listPrice: json['list_price'] as num?,
      name: json['display_name'] as String?,
      listImage: (json['product_variant_image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_1920': instance.image_1920,
      'description': instance.description,
      'list_price': instance.listPrice,
      'display_name': instance.name,
      'product_variant_image_ids': instance.listImage,
    };
