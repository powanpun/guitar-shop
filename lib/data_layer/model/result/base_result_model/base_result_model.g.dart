// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResultModel _$$_BaseResultModelFromJson(Map<String, dynamic> json) =>
    _$_BaseResultModel(
      jsonrpc: json['jsonrpc'] as String?,
      error: json['error'] == null
          ? null
          : BaseError.fromJson(json['error'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : BaseResultData.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BaseResultModelToJson(_$_BaseResultModel instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'error': instance.error,
      'result': instance.result,
    };

_$_BaseError _$$_BaseErrorFromJson(Map<String, dynamic> json) => _$_BaseError(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BaseErrorData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BaseErrorToJson(_$_BaseError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$_BaseErrorData _$$_BaseErrorDataFromJson(Map<String, dynamic> json) =>
    _$_BaseErrorData(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_BaseErrorDataToJson(_$_BaseErrorData instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_BaseResultData _$$_BaseResultDataFromJson(Map<String, dynamic> json) =>
    _$_BaseResultData(
      length: json['length'] as int?,
      records:
          (json['records'] as List<dynamic>?)?.map((e) => e as Object).toList(),
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList(),
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_BaseResultDataToJson(_$_BaseResultData instance) =>
    <String, dynamic>{
      'length': instance.length,
      'records': instance.records,
      'response': instance.response,
      'status': instance.status,
      'message': instance.message,
    };

_$_BaseResultRecord _$$_BaseResultRecordFromJson(Map<String, dynamic> json) =>
    _$_BaseResultRecord(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      order: json['order'] as int?,
      image_1920: json['image_1920'],
      image_256: json['image_256'] as String?,
      itemType: json['item_type'] as String?,
      productId: (json['product_category_id'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList(),
      lineIds:
          (json['line_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      listPrice: json['list_price'] as num?,
    );

Map<String, dynamic> _$$_BaseResultRecordToJson(_$_BaseResultRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'order': instance.order,
      'image_1920': instance.image_1920,
      'image_256': instance.image_256,
      'item_type': instance.itemType,
      'product_category_id': instance.productId,
      'line_ids': instance.lineIds,
      'list_price': instance.listPrice,
    };
