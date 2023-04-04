import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_result_model.freezed.dart';
part 'base_result_model.g.dart';

@freezed
class BaseResultModel with _$BaseResultModel {
  const factory BaseResultModel({
    String? jsonrpc,
    BaseError? error,
    BaseResultData? result,
  }) = _BaseResultModel;

  factory BaseResultModel.fromJson(Map<String, dynamic> json) =>
      _$BaseResultModelFromJson(json);
}

@freezed
class BaseError with _$BaseError {
  const factory BaseError({
    int? code,
    String? message,
    BaseErrorData? data,
  }) = _BaseError;

  factory BaseError.fromJson(Map<String, dynamic> json) =>
      _$BaseErrorFromJson(json);
}

@freezed
class BaseErrorData with _$BaseErrorData {
  const factory BaseErrorData({
    String? message,
  }) = _BaseErrorData;

  factory BaseErrorData.fromJson(Map<String, dynamic> json) =>
      _$BaseErrorDataFromJson(json);
}

@freezed
class BaseResultData with _$BaseResultData {
  const factory BaseResultData({
    int? length,
    List<Object>? records,
    List<Object>? response,
    bool? status,
    String? message,
  }) = _BaseResultData;

  factory BaseResultData.fromJson(Map<String, dynamic> json) =>
      _$BaseResultDataFromJson(json);
}

@freezed
class BaseResultRecord with _$BaseResultRecord {
  const factory BaseResultRecord({
    int? id,
    String? name,
    String? image,
    int? order,

    //categories slider
    // String? image_1920,
    Object? image_1920,
    //detail page attributes
    String? image_256,
    //featured product menu

    // ignore: invalid_annotation_target
    @JsonKey(name: "item_type") String? itemType,

    // ignore: invalid_annotation_target
    @JsonKey(name: "product_category_id") List<Object>? productId,

    // ignore: invalid_annotation_target
    @JsonKey(name: "line_ids") List<int>? lineIds,

    // ignore: invalid_annotation_target
    @JsonKey(name: "list_price") num? listPrice,
  }) = _BaseResultRecord;

  factory BaseResultRecord.fromJson(Map<String, dynamic> json) =>
      _$BaseResultRecordFromJson(json);
}
