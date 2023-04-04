// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseResultModel _$BaseResultModelFromJson(Map<String, dynamic> json) {
  return _BaseResultModel.fromJson(json);
}

/// @nodoc
mixin _$BaseResultModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  BaseError? get error => throw _privateConstructorUsedError;
  BaseResultData? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResultModelCopyWith<BaseResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResultModelCopyWith<$Res> {
  factory $BaseResultModelCopyWith(
          BaseResultModel value, $Res Function(BaseResultModel) then) =
      _$BaseResultModelCopyWithImpl<$Res, BaseResultModel>;
  @useResult
  $Res call({String? jsonrpc, BaseError? error, BaseResultData? result});

  $BaseErrorCopyWith<$Res>? get error;
  $BaseResultDataCopyWith<$Res>? get result;
}

/// @nodoc
class _$BaseResultModelCopyWithImpl<$Res, $Val extends BaseResultModel>
    implements $BaseResultModelCopyWith<$Res> {
  _$BaseResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseError?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as BaseResultData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $BaseErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseResultDataCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $BaseResultDataCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BaseResultModelCopyWith<$Res>
    implements $BaseResultModelCopyWith<$Res> {
  factory _$$_BaseResultModelCopyWith(
          _$_BaseResultModel value, $Res Function(_$_BaseResultModel) then) =
      __$$_BaseResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, BaseError? error, BaseResultData? result});

  @override
  $BaseErrorCopyWith<$Res>? get error;
  @override
  $BaseResultDataCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_BaseResultModelCopyWithImpl<$Res>
    extends _$BaseResultModelCopyWithImpl<$Res, _$_BaseResultModel>
    implements _$$_BaseResultModelCopyWith<$Res> {
  __$$_BaseResultModelCopyWithImpl(
      _$_BaseResultModel _value, $Res Function(_$_BaseResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_BaseResultModel(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseError?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as BaseResultData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseResultModel implements _BaseResultModel {
  const _$_BaseResultModel({this.jsonrpc, this.error, this.result});

  factory _$_BaseResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_BaseResultModelFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final BaseError? error;
  @override
  final BaseResultData? result;

  @override
  String toString() {
    return 'BaseResultModel(jsonrpc: $jsonrpc, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseResultModel &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseResultModelCopyWith<_$_BaseResultModel> get copyWith =>
      __$$_BaseResultModelCopyWithImpl<_$_BaseResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseResultModelToJson(
      this,
    );
  }
}

abstract class _BaseResultModel implements BaseResultModel {
  const factory _BaseResultModel(
      {final String? jsonrpc,
      final BaseError? error,
      final BaseResultData? result}) = _$_BaseResultModel;

  factory _BaseResultModel.fromJson(Map<String, dynamic> json) =
      _$_BaseResultModel.fromJson;

  @override
  String? get jsonrpc;
  @override
  BaseError? get error;
  @override
  BaseResultData? get result;
  @override
  @JsonKey(ignore: true)
  _$$_BaseResultModelCopyWith<_$_BaseResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseError _$BaseErrorFromJson(Map<String, dynamic> json) {
  return _BaseError.fromJson(json);
}

/// @nodoc
mixin _$BaseError {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BaseErrorData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseErrorCopyWith<BaseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseErrorCopyWith<$Res> {
  factory $BaseErrorCopyWith(BaseError value, $Res Function(BaseError) then) =
      _$BaseErrorCopyWithImpl<$Res, BaseError>;
  @useResult
  $Res call({int? code, String? message, BaseErrorData? data});

  $BaseErrorDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseErrorCopyWithImpl<$Res, $Val extends BaseError>
    implements $BaseErrorCopyWith<$Res> {
  _$BaseErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BaseErrorData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseErrorDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BaseErrorDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BaseErrorCopyWith<$Res> implements $BaseErrorCopyWith<$Res> {
  factory _$$_BaseErrorCopyWith(
          _$_BaseError value, $Res Function(_$_BaseError) then) =
      __$$_BaseErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, BaseErrorData? data});

  @override
  $BaseErrorDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_BaseErrorCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$_BaseError>
    implements _$$_BaseErrorCopyWith<$Res> {
  __$$_BaseErrorCopyWithImpl(
      _$_BaseError _value, $Res Function(_$_BaseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BaseError(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BaseErrorData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseError implements _BaseError {
  const _$_BaseError({this.code, this.message, this.data});

  factory _$_BaseError.fromJson(Map<String, dynamic> json) =>
      _$$_BaseErrorFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final BaseErrorData? data;

  @override
  String toString() {
    return 'BaseError(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseErrorCopyWith<_$_BaseError> get copyWith =>
      __$$_BaseErrorCopyWithImpl<_$_BaseError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseErrorToJson(
      this,
    );
  }
}

abstract class _BaseError implements BaseError {
  const factory _BaseError(
      {final int? code,
      final String? message,
      final BaseErrorData? data}) = _$_BaseError;

  factory _BaseError.fromJson(Map<String, dynamic> json) =
      _$_BaseError.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  BaseErrorData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BaseErrorCopyWith<_$_BaseError> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseErrorData _$BaseErrorDataFromJson(Map<String, dynamic> json) {
  return _BaseErrorData.fromJson(json);
}

/// @nodoc
mixin _$BaseErrorData {
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseErrorDataCopyWith<BaseErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseErrorDataCopyWith<$Res> {
  factory $BaseErrorDataCopyWith(
          BaseErrorData value, $Res Function(BaseErrorData) then) =
      _$BaseErrorDataCopyWithImpl<$Res, BaseErrorData>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$BaseErrorDataCopyWithImpl<$Res, $Val extends BaseErrorData>
    implements $BaseErrorDataCopyWith<$Res> {
  _$BaseErrorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BaseErrorDataCopyWith<$Res>
    implements $BaseErrorDataCopyWith<$Res> {
  factory _$$_BaseErrorDataCopyWith(
          _$_BaseErrorData value, $Res Function(_$_BaseErrorData) then) =
      __$$_BaseErrorDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_BaseErrorDataCopyWithImpl<$Res>
    extends _$BaseErrorDataCopyWithImpl<$Res, _$_BaseErrorData>
    implements _$$_BaseErrorDataCopyWith<$Res> {
  __$$_BaseErrorDataCopyWithImpl(
      _$_BaseErrorData _value, $Res Function(_$_BaseErrorData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_BaseErrorData(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseErrorData implements _BaseErrorData {
  const _$_BaseErrorData({this.message});

  factory _$_BaseErrorData.fromJson(Map<String, dynamic> json) =>
      _$$_BaseErrorDataFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'BaseErrorData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseErrorData &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseErrorDataCopyWith<_$_BaseErrorData> get copyWith =>
      __$$_BaseErrorDataCopyWithImpl<_$_BaseErrorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseErrorDataToJson(
      this,
    );
  }
}

abstract class _BaseErrorData implements BaseErrorData {
  const factory _BaseErrorData({final String? message}) = _$_BaseErrorData;

  factory _BaseErrorData.fromJson(Map<String, dynamic> json) =
      _$_BaseErrorData.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_BaseErrorDataCopyWith<_$_BaseErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseResultData _$BaseResultDataFromJson(Map<String, dynamic> json) {
  return _BaseResultData.fromJson(json);
}

/// @nodoc
mixin _$BaseResultData {
  int? get length => throw _privateConstructorUsedError;
  List<Object>? get records => throw _privateConstructorUsedError;
  List<Object>? get response => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResultDataCopyWith<BaseResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResultDataCopyWith<$Res> {
  factory $BaseResultDataCopyWith(
          BaseResultData value, $Res Function(BaseResultData) then) =
      _$BaseResultDataCopyWithImpl<$Res, BaseResultData>;
  @useResult
  $Res call(
      {int? length,
      List<Object>? records,
      List<Object>? response,
      bool? status,
      String? message});
}

/// @nodoc
class _$BaseResultDataCopyWithImpl<$Res, $Val extends BaseResultData>
    implements $BaseResultDataCopyWith<$Res> {
  _$BaseResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? records = freezed,
    Object? response = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BaseResultDataCopyWith<$Res>
    implements $BaseResultDataCopyWith<$Res> {
  factory _$$_BaseResultDataCopyWith(
          _$_BaseResultData value, $Res Function(_$_BaseResultData) then) =
      __$$_BaseResultDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? length,
      List<Object>? records,
      List<Object>? response,
      bool? status,
      String? message});
}

/// @nodoc
class __$$_BaseResultDataCopyWithImpl<$Res>
    extends _$BaseResultDataCopyWithImpl<$Res, _$_BaseResultData>
    implements _$$_BaseResultDataCopyWith<$Res> {
  __$$_BaseResultDataCopyWithImpl(
      _$_BaseResultData _value, $Res Function(_$_BaseResultData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? records = freezed,
    Object? response = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_BaseResultData(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      records: freezed == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseResultData implements _BaseResultData {
  const _$_BaseResultData(
      {this.length,
      final List<Object>? records,
      final List<Object>? response,
      this.status,
      this.message})
      : _records = records,
        _response = response;

  factory _$_BaseResultData.fromJson(Map<String, dynamic> json) =>
      _$$_BaseResultDataFromJson(json);

  @override
  final int? length;
  final List<Object>? _records;
  @override
  List<Object>? get records {
    final value = _records;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Object>? _response;
  @override
  List<Object>? get response {
    final value = _response;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'BaseResultData(length: $length, records: $records, response: $response, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseResultData &&
            (identical(other.length, length) || other.length == length) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            const DeepCollectionEquality().equals(other._response, _response) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      length,
      const DeepCollectionEquality().hash(_records),
      const DeepCollectionEquality().hash(_response),
      status,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseResultDataCopyWith<_$_BaseResultData> get copyWith =>
      __$$_BaseResultDataCopyWithImpl<_$_BaseResultData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseResultDataToJson(
      this,
    );
  }
}

abstract class _BaseResultData implements BaseResultData {
  const factory _BaseResultData(
      {final int? length,
      final List<Object>? records,
      final List<Object>? response,
      final bool? status,
      final String? message}) = _$_BaseResultData;

  factory _BaseResultData.fromJson(Map<String, dynamic> json) =
      _$_BaseResultData.fromJson;

  @override
  int? get length;
  @override
  List<Object>? get records;
  @override
  List<Object>? get response;
  @override
  bool? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_BaseResultDataCopyWith<_$_BaseResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseResultRecord _$BaseResultRecordFromJson(Map<String, dynamic> json) {
  return _BaseResultRecord.fromJson(json);
}

/// @nodoc
mixin _$BaseResultRecord {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError; //categories slider
// String? image_1920,
  Object? get image_1920 =>
      throw _privateConstructorUsedError; //detail page attributes
  String? get image_256 =>
      throw _privateConstructorUsedError; //featured product menu
// ignore: invalid_annotation_target
  @JsonKey(name: "item_type")
  String? get itemType =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "product_category_id")
  List<Object>? get productId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "line_ids")
  List<int>? get lineIds =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "list_price")
  num? get listPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResultRecordCopyWith<BaseResultRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResultRecordCopyWith<$Res> {
  factory $BaseResultRecordCopyWith(
          BaseResultRecord value, $Res Function(BaseResultRecord) then) =
      _$BaseResultRecordCopyWithImpl<$Res, BaseResultRecord>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      int? order,
      Object? image_1920,
      String? image_256,
      @JsonKey(name: "item_type") String? itemType,
      @JsonKey(name: "product_category_id") List<Object>? productId,
      @JsonKey(name: "line_ids") List<int>? lineIds,
      @JsonKey(name: "list_price") num? listPrice});
}

/// @nodoc
class _$BaseResultRecordCopyWithImpl<$Res, $Val extends BaseResultRecord>
    implements $BaseResultRecordCopyWith<$Res> {
  _$BaseResultRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? order = freezed,
    Object? image_1920 = freezed,
    Object? image_256 = freezed,
    Object? itemType = freezed,
    Object? productId = freezed,
    Object? lineIds = freezed,
    Object? listPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      image_1920: freezed == image_1920 ? _value.image_1920 : image_1920,
      image_256: freezed == image_256
          ? _value.image_256
          : image_256 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType: freezed == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      lineIds: freezed == lineIds
          ? _value.lineIds
          : lineIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BaseResultRecordCopyWith<$Res>
    implements $BaseResultRecordCopyWith<$Res> {
  factory _$$_BaseResultRecordCopyWith(
          _$_BaseResultRecord value, $Res Function(_$_BaseResultRecord) then) =
      __$$_BaseResultRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      int? order,
      Object? image_1920,
      String? image_256,
      @JsonKey(name: "item_type") String? itemType,
      @JsonKey(name: "product_category_id") List<Object>? productId,
      @JsonKey(name: "line_ids") List<int>? lineIds,
      @JsonKey(name: "list_price") num? listPrice});
}

/// @nodoc
class __$$_BaseResultRecordCopyWithImpl<$Res>
    extends _$BaseResultRecordCopyWithImpl<$Res, _$_BaseResultRecord>
    implements _$$_BaseResultRecordCopyWith<$Res> {
  __$$_BaseResultRecordCopyWithImpl(
      _$_BaseResultRecord _value, $Res Function(_$_BaseResultRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? order = freezed,
    Object? image_1920 = freezed,
    Object? image_256 = freezed,
    Object? itemType = freezed,
    Object? productId = freezed,
    Object? lineIds = freezed,
    Object? listPrice = freezed,
  }) {
    return _then(_$_BaseResultRecord(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      image_1920: freezed == image_1920 ? _value.image_1920 : image_1920,
      image_256: freezed == image_256
          ? _value.image_256
          : image_256 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType: freezed == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value._productId
          : productId // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      lineIds: freezed == lineIds
          ? _value._lineIds
          : lineIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseResultRecord implements _BaseResultRecord {
  const _$_BaseResultRecord(
      {this.id,
      this.name,
      this.image,
      this.order,
      this.image_1920,
      this.image_256,
      @JsonKey(name: "item_type") this.itemType,
      @JsonKey(name: "product_category_id") final List<Object>? productId,
      @JsonKey(name: "line_ids") final List<int>? lineIds,
      @JsonKey(name: "list_price") this.listPrice})
      : _productId = productId,
        _lineIds = lineIds;

  factory _$_BaseResultRecord.fromJson(Map<String, dynamic> json) =>
      _$$_BaseResultRecordFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? order;
//categories slider
// String? image_1920,
  @override
  final Object? image_1920;
//detail page attributes
  @override
  final String? image_256;
//featured product menu
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "item_type")
  final String? itemType;
// ignore: invalid_annotation_target
  final List<Object>? _productId;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "product_category_id")
  List<Object>? get productId {
    final value = _productId;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// ignore: invalid_annotation_target
  final List<int>? _lineIds;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "line_ids")
  List<int>? get lineIds {
    final value = _lineIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "list_price")
  final num? listPrice;

  @override
  String toString() {
    return 'BaseResultRecord(id: $id, name: $name, image: $image, order: $order, image_1920: $image_1920, image_256: $image_256, itemType: $itemType, productId: $productId, lineIds: $lineIds, listPrice: $listPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseResultRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality()
                .equals(other.image_1920, image_1920) &&
            (identical(other.image_256, image_256) ||
                other.image_256 == image_256) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            const DeepCollectionEquality()
                .equals(other._productId, _productId) &&
            const DeepCollectionEquality().equals(other._lineIds, _lineIds) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      order,
      const DeepCollectionEquality().hash(image_1920),
      image_256,
      itemType,
      const DeepCollectionEquality().hash(_productId),
      const DeepCollectionEquality().hash(_lineIds),
      listPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseResultRecordCopyWith<_$_BaseResultRecord> get copyWith =>
      __$$_BaseResultRecordCopyWithImpl<_$_BaseResultRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseResultRecordToJson(
      this,
    );
  }
}

abstract class _BaseResultRecord implements BaseResultRecord {
  const factory _BaseResultRecord(
      {final int? id,
      final String? name,
      final String? image,
      final int? order,
      final Object? image_1920,
      final String? image_256,
      @JsonKey(name: "item_type") final String? itemType,
      @JsonKey(name: "product_category_id") final List<Object>? productId,
      @JsonKey(name: "line_ids") final List<int>? lineIds,
      @JsonKey(name: "list_price") final num? listPrice}) = _$_BaseResultRecord;

  factory _BaseResultRecord.fromJson(Map<String, dynamic> json) =
      _$_BaseResultRecord.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  int? get order;
  @override //categories slider
// String? image_1920,
  Object? get image_1920;
  @override //detail page attributes
  String? get image_256;
  @override //featured product menu
// ignore: invalid_annotation_target
  @JsonKey(name: "item_type")
  String? get itemType;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "product_category_id")
  List<Object>? get productId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "line_ids")
  List<int>? get lineIds;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "list_price")
  num? get listPrice;
  @override
  @JsonKey(ignore: true)
  _$$_BaseResultRecordCopyWith<_$_BaseResultRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
