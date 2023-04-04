// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      id: json['id'] as int?,
      street: json['street'] as String?,
      street2: json['street2'] as String?,
      city: json['city'] as String?,
      type: json['type'] as String?,
      zip: json['zip'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      long: (json['long'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street': instance.street,
      'street2': instance.street2,
      'city': instance.city,
      'type': instance.type,
      'zip': instance.zip,
      'lat': instance.lat,
      'long': instance.long,
    };
