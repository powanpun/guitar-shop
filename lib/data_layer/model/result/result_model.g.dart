// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      jsonrpc: json['jsonrpc'] as String?,
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : ResultData.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'error': instance.error,
      'result': instance.result,
    };

_$_Error _$$_ErrorFromJson(Map<String, dynamic> json) => _$_Error(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ErrorData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$_ErrorData _$$_ErrorDataFromJson(Map<String, dynamic> json) => _$_ErrorData(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ErrorDataToJson(_$_ErrorData instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_ResultData _$$_ResultDataFromJson(Map<String, dynamic> json) =>
    _$_ResultData(
      length: json['length'] as int?,
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => ResultRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      partnerDisplayName: json['partner_display_name'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$_ResultDataToJson(_$_ResultData instance) =>
    <String, dynamic>{
      'length': instance.length,
      'records': instance.records,
      'partner_display_name': instance.partnerDisplayName,
      'username': instance.username,
    };

_$_ResultRecord _$$_ResultRecordFromJson(Map<String, dynamic> json) =>
    _$_ResultRecord(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      order: json['order'] as int?,
      image_1920: json['image_1920'],
      image_256: json['image_256'] as String?,
      itemType: json['item_type'] as String?,
      productId: (json['product_id'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList(),
      lineIds:
          (json['line_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      listPrice: json['list_price'] as num?,
    );

Map<String, dynamic> _$$_ResultRecordToJson(_$_ResultRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'order': instance.order,
      'image_1920': instance.image_1920,
      'image_256': instance.image_256,
      'item_type': instance.itemType,
      'product_id': instance.productId,
      'line_ids': instance.lineIds,
      'list_price': instance.listPrice,
    };
