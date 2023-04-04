// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryMethodModel _$$_DeliveryMethodModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryMethodModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      fixedPrice: json['fixed_price'] as num?,
    );

Map<String, dynamic> _$$_DeliveryMethodModelToJson(
        _$_DeliveryMethodModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fixed_price': instance.fixedPrice,
    };
