// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      totalQuantity: json['product_uom_qty'] as num?,
      priceUnit: json['price_unit'] as num?,
      priceSubTotal: json['price_subtotal'] as num?,
      productId: (json['product_id'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList(),
      priceTax: (json['price_tax'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_uom_qty': instance.totalQuantity,
      'price_unit': instance.priceUnit,
      'price_subtotal': instance.priceSubTotal,
      'product_id': instance.productId,
      'price_tax': instance.priceTax,
    };
