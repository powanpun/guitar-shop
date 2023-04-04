// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      state: json['state'] as String?,
      dateOrder: json['date_order'] as String?,
      amountTotal: json['amount_total'] as num?,
      productIds: (json['product_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      lineIds:
          (json['line_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      amountUntaxed: (json['amount_untaxed'] as num?)?.toDouble(),
      amountTax: (json['amount_tax'] as num?)?.toDouble(),
      amountDelivery: (json['amount_delivery'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'date_order': instance.dateOrder,
      'amount_total': instance.amountTotal,
      'product_ids': instance.productIds,
      'line_ids': instance.lineIds,
      'amount_untaxed': instance.amountUntaxed,
      'amount_tax': instance.amountTax,
      'amount_delivery': instance.amountDelivery,
    };
