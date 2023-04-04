// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get jsonrpc => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;
  ResultData? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({String? jsonrpc, Error? error, ResultData? result});

  $ErrorCopyWith<$Res>? get error;
  $ResultDataCopyWith<$Res>? get result;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

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
              as Error?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultDataCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultDataCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Error? error, ResultData? result});

  @override
  $ErrorCopyWith<$Res>? get error;
  @override
  $ResultDataCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_Result(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({this.jsonrpc, this.error, this.result});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final Error? error;
  @override
  final ResultData? result;

  @override
  String toString() {
    return 'Result(jsonrpc: $jsonrpc, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
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
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final String? jsonrpc,
      final Error? error,
      final ResultData? result}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  String? get jsonrpc;
  @override
  Error? get error;
  @override
  ResultData? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return _Error.fromJson(json);
}

/// @nodoc
mixin _$Error {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ErrorData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res, Error>;
  @useResult
  $Res call({int? code, String? message, ErrorData? data});

  $ErrorDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res, $Val extends Error>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

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
              as ErrorData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ErrorDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, ErrorData? data});

  @override
  $ErrorDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_Error(
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
              as ErrorData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Error implements _Error {
  const _$_Error({this.code, this.message, this.data});

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final ErrorData? data;

  @override
  String toString() {
    return 'Error(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
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
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorToJson(
      this,
    );
  }
}

abstract class _Error implements Error {
  const factory _Error(
      {final int? code,
      final String? message,
      final ErrorData? data}) = _$_Error;

  factory _Error.fromJson(Map<String, dynamic> json) = _$_Error.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  ErrorData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorData _$ErrorDataFromJson(Map<String, dynamic> json) {
  return _ErrorData.fromJson(json);
}

/// @nodoc
mixin _$ErrorData {
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDataCopyWith<ErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDataCopyWith<$Res> {
  factory $ErrorDataCopyWith(ErrorData value, $Res Function(ErrorData) then) =
      _$ErrorDataCopyWithImpl<$Res, ErrorData>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ErrorDataCopyWithImpl<$Res, $Val extends ErrorData>
    implements $ErrorDataCopyWith<$Res> {
  _$ErrorDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_ErrorDataCopyWith<$Res> implements $ErrorDataCopyWith<$Res> {
  factory _$$_ErrorDataCopyWith(
          _$_ErrorData value, $Res Function(_$_ErrorData) then) =
      __$$_ErrorDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ErrorDataCopyWithImpl<$Res>
    extends _$ErrorDataCopyWithImpl<$Res, _$_ErrorData>
    implements _$$_ErrorDataCopyWith<$Res> {
  __$$_ErrorDataCopyWithImpl(
      _$_ErrorData _value, $Res Function(_$_ErrorData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ErrorData(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorData implements _ErrorData {
  const _$_ErrorData({this.message});

  factory _$_ErrorData.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorDataFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'ErrorData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorData &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorDataCopyWith<_$_ErrorData> get copyWith =>
      __$$_ErrorDataCopyWithImpl<_$_ErrorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorDataToJson(
      this,
    );
  }
}

abstract class _ErrorData implements ErrorData {
  const factory _ErrorData({final String? message}) = _$_ErrorData;

  factory _ErrorData.fromJson(Map<String, dynamic> json) =
      _$_ErrorData.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorDataCopyWith<_$_ErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultData _$ResultDataFromJson(Map<String, dynamic> json) {
  return _ResultData.fromJson(json);
}

/// @nodoc
mixin _$ResultData {
  int? get length => throw _privateConstructorUsedError;
  List<ResultRecord>? get records =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "partner_display_name")
  String? get partnerDisplayName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDataCopyWith<ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataCopyWith<$Res> {
  factory $ResultDataCopyWith(
          ResultData value, $Res Function(ResultData) then) =
      _$ResultDataCopyWithImpl<$Res, ResultData>;
  @useResult
  $Res call(
      {int? length,
      List<ResultRecord>? records,
      @JsonKey(name: "partner_display_name") String? partnerDisplayName,
      String? username});
}

/// @nodoc
class _$ResultDataCopyWithImpl<$Res, $Val extends ResultData>
    implements $ResultDataCopyWith<$Res> {
  _$ResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? records = freezed,
    Object? partnerDisplayName = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<ResultRecord>?,
      partnerDisplayName: freezed == partnerDisplayName
          ? _value.partnerDisplayName
          : partnerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultDataCopyWith<$Res>
    implements $ResultDataCopyWith<$Res> {
  factory _$$_ResultDataCopyWith(
          _$_ResultData value, $Res Function(_$_ResultData) then) =
      __$$_ResultDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? length,
      List<ResultRecord>? records,
      @JsonKey(name: "partner_display_name") String? partnerDisplayName,
      String? username});
}

/// @nodoc
class __$$_ResultDataCopyWithImpl<$Res>
    extends _$ResultDataCopyWithImpl<$Res, _$_ResultData>
    implements _$$_ResultDataCopyWith<$Res> {
  __$$_ResultDataCopyWithImpl(
      _$_ResultData _value, $Res Function(_$_ResultData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? records = freezed,
    Object? partnerDisplayName = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_ResultData(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      records: freezed == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<ResultRecord>?,
      partnerDisplayName: freezed == partnerDisplayName
          ? _value.partnerDisplayName
          : partnerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultData implements _ResultData {
  const _$_ResultData(
      {this.length,
      final List<ResultRecord>? records,
      @JsonKey(name: "partner_display_name") this.partnerDisplayName,
      this.username})
      : _records = records;

  factory _$_ResultData.fromJson(Map<String, dynamic> json) =>
      _$$_ResultDataFromJson(json);

  @override
  final int? length;
  final List<ResultRecord>? _records;
  @override
  List<ResultRecord>? get records {
    final value = _records;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "partner_display_name")
  final String? partnerDisplayName;
  @override
  final String? username;

  @override
  String toString() {
    return 'ResultData(length: $length, records: $records, partnerDisplayName: $partnerDisplayName, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultData &&
            (identical(other.length, length) || other.length == length) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.partnerDisplayName, partnerDisplayName) ||
                other.partnerDisplayName == partnerDisplayName) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      length,
      const DeepCollectionEquality().hash(_records),
      partnerDisplayName,
      username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultDataCopyWith<_$_ResultData> get copyWith =>
      __$$_ResultDataCopyWithImpl<_$_ResultData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultDataToJson(
      this,
    );
  }
}

abstract class _ResultData implements ResultData {
  const factory _ResultData(
      {final int? length,
      final List<ResultRecord>? records,
      @JsonKey(name: "partner_display_name") final String? partnerDisplayName,
      final String? username}) = _$_ResultData;

  factory _ResultData.fromJson(Map<String, dynamic> json) =
      _$_ResultData.fromJson;

  @override
  int? get length;
  @override
  List<ResultRecord>? get records;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "partner_display_name")
  String? get partnerDisplayName;
  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$_ResultDataCopyWith<_$_ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultRecord _$ResultRecordFromJson(Map<String, dynamic> json) {
  return _ResultRecord.fromJson(json);
}

/// @nodoc
mixin _$ResultRecord {
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
  @JsonKey(name: "product_id")
  List<Object>? get productId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "line_ids")
  List<int>? get lineIds =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "list_price")
  num? get listPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultRecordCopyWith<ResultRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultRecordCopyWith<$Res> {
  factory $ResultRecordCopyWith(
          ResultRecord value, $Res Function(ResultRecord) then) =
      _$ResultRecordCopyWithImpl<$Res, ResultRecord>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      int? order,
      Object? image_1920,
      String? image_256,
      @JsonKey(name: "item_type") String? itemType,
      @JsonKey(name: "product_id") List<Object>? productId,
      @JsonKey(name: "line_ids") List<int>? lineIds,
      @JsonKey(name: "list_price") num? listPrice});
}

/// @nodoc
class _$ResultRecordCopyWithImpl<$Res, $Val extends ResultRecord>
    implements $ResultRecordCopyWith<$Res> {
  _$ResultRecordCopyWithImpl(this._value, this._then);

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
abstract class _$$_ResultRecordCopyWith<$Res>
    implements $ResultRecordCopyWith<$Res> {
  factory _$$_ResultRecordCopyWith(
          _$_ResultRecord value, $Res Function(_$_ResultRecord) then) =
      __$$_ResultRecordCopyWithImpl<$Res>;
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
      @JsonKey(name: "product_id") List<Object>? productId,
      @JsonKey(name: "line_ids") List<int>? lineIds,
      @JsonKey(name: "list_price") num? listPrice});
}

/// @nodoc
class __$$_ResultRecordCopyWithImpl<$Res>
    extends _$ResultRecordCopyWithImpl<$Res, _$_ResultRecord>
    implements _$$_ResultRecordCopyWith<$Res> {
  __$$_ResultRecordCopyWithImpl(
      _$_ResultRecord _value, $Res Function(_$_ResultRecord) _then)
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
    return _then(_$_ResultRecord(
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
class _$_ResultRecord implements _ResultRecord {
  const _$_ResultRecord(
      {this.id,
      this.name,
      this.image,
      this.order,
      this.image_1920,
      this.image_256,
      @JsonKey(name: "item_type") this.itemType,
      @JsonKey(name: "product_id") final List<Object>? productId,
      @JsonKey(name: "line_ids") final List<int>? lineIds,
      @JsonKey(name: "list_price") this.listPrice})
      : _productId = productId,
        _lineIds = lineIds;

  factory _$_ResultRecord.fromJson(Map<String, dynamic> json) =>
      _$$_ResultRecordFromJson(json);

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
  @JsonKey(name: "product_id")
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
    return 'ResultRecord(id: $id, name: $name, image: $image, order: $order, image_1920: $image_1920, image_256: $image_256, itemType: $itemType, productId: $productId, lineIds: $lineIds, listPrice: $listPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultRecord &&
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
  _$$_ResultRecordCopyWith<_$_ResultRecord> get copyWith =>
      __$$_ResultRecordCopyWithImpl<_$_ResultRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultRecordToJson(
      this,
    );
  }
}

abstract class _ResultRecord implements ResultRecord {
  const factory _ResultRecord(
      {final int? id,
      final String? name,
      final String? image,
      final int? order,
      final Object? image_1920,
      final String? image_256,
      @JsonKey(name: "item_type") final String? itemType,
      @JsonKey(name: "product_id") final List<Object>? productId,
      @JsonKey(name: "line_ids") final List<int>? lineIds,
      @JsonKey(name: "list_price") final num? listPrice}) = _$_ResultRecord;

  factory _ResultRecord.fromJson(Map<String, dynamic> json) =
      _$_ResultRecord.fromJson;

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
  @JsonKey(name: "product_id")
  List<Object>? get productId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "line_ids")
  List<int>? get lineIds;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "list_price")
  num? get listPrice;
  @override
  @JsonKey(ignore: true)
  _$$_ResultRecordCopyWith<_$_ResultRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
