import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@freezed
class Result with _$Result {
  const factory Result({
    String? jsonrpc,
    Error? error,
    ResultData? result,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Error with _$Error {
  const factory Error({
    int? code,
    String? message,
    ErrorData? data,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}

@freezed
class ErrorData with _$ErrorData {
  const factory ErrorData({
    String? message,
  }) = _ErrorData;

  factory ErrorData.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataFromJson(json);
}

@freezed
class ResultData with _$ResultData {
  const factory ResultData({
    int? length,
    List<ResultRecord>? records,
    // ignore: invalid_annotation_target
    @JsonKey(name: "partner_display_name") String? partnerDisplayName,
    String? username,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, dynamic> json) =>
      _$ResultDataFromJson(json);
}

@freezed
class ResultRecord with _$ResultRecord {
  const factory ResultRecord({
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
    @JsonKey(name: "product_id") List<Object>? productId,

    // ignore: invalid_annotation_target
    @JsonKey(name: "line_ids") List<int>? lineIds,

    // ignore: invalid_annotation_target
    @JsonKey(name: "list_price") num? listPrice,
  }) = _ResultRecord;

  factory ResultRecord.fromJson(Map<String, dynamic> json) =>
      _$ResultRecordFromJson(json);
}
