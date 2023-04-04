// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get state =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "date_order")
  String? get dateOrder =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "amount_total")
  num? get amountTotal =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "product_ids")
  List<int>? get productIds =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "line_ids")
  List<int>? get lineIds =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "amount_untaxed")
  double? get amountUntaxed =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "amount_tax")
  double? get amountTax =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "amount_delivery")
  double? get amountDelivery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? state,
      @JsonKey(name: "date_order") String? dateOrder,
      @JsonKey(name: "amount_total") num? amountTotal,
      @JsonKey(name: "product_ids") List<int>? productIds,
      @JsonKey(name: "line_ids") List<int>? lineIds,
      @JsonKey(name: "amount_untaxed") double? amountUntaxed,
      @JsonKey(name: "amount_tax") double? amountTax,
      @JsonKey(name: "amount_delivery") double? amountDelivery});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? dateOrder = freezed,
    Object? amountTotal = freezed,
    Object? productIds = freezed,
    Object? lineIds = freezed,
    Object? amountUntaxed = freezed,
    Object? amountTax = freezed,
    Object? amountDelivery = freezed,
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
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOrder: freezed == dateOrder
          ? _value.dateOrder
          : dateOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      amountTotal: freezed == amountTotal
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      productIds: freezed == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      lineIds: freezed == lineIds
          ? _value.lineIds
          : lineIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      amountUntaxed: freezed == amountUntaxed
          ? _value.amountUntaxed
          : amountUntaxed // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTax: freezed == amountTax
          ? _value.amountTax
          : amountTax // ignore: cast_nullable_to_non_nullable
              as double?,
      amountDelivery: freezed == amountDelivery
          ? _value.amountDelivery
          : amountDelivery // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? state,
      @JsonKey(name: "date_order") String? dateOrder,
      @JsonKey(name: "amount_total") num? amountTotal,
      @JsonKey(name: "product_ids") List<int>? productIds,
      @JsonKey(name: "line_ids") List<int>? lineIds,
      @JsonKey(name: "amount_untaxed") double? amountUntaxed,
      @JsonKey(name: "amount_tax") double? amountTax,
      @JsonKey(name: "amount_delivery") double? amountDelivery});
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? dateOrder = freezed,
    Object? amountTotal = freezed,
    Object? productIds = freezed,
    Object? lineIds = freezed,
    Object? amountUntaxed = freezed,
    Object? amountTax = freezed,
    Object? amountDelivery = freezed,
  }) {
    return _then(_$_OrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOrder: freezed == dateOrder
          ? _value.dateOrder
          : dateOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      amountTotal: freezed == amountTotal
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      productIds: freezed == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      lineIds: freezed == lineIds
          ? _value._lineIds
          : lineIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      amountUntaxed: freezed == amountUntaxed
          ? _value.amountUntaxed
          : amountUntaxed // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTax: freezed == amountTax
          ? _value.amountTax
          : amountTax // ignore: cast_nullable_to_non_nullable
              as double?,
      amountDelivery: freezed == amountDelivery
          ? _value.amountDelivery
          : amountDelivery // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel implements _OrderModel {
  const _$_OrderModel(
      {this.id,
      this.name,
      this.state,
      @JsonKey(name: "date_order") this.dateOrder,
      @JsonKey(name: "amount_total") this.amountTotal,
      @JsonKey(name: "product_ids") final List<int>? productIds,
      @JsonKey(name: "line_ids") final List<int>? lineIds,
      @JsonKey(name: "amount_untaxed") this.amountUntaxed,
      @JsonKey(name: "amount_tax") this.amountTax,
      @JsonKey(name: "amount_delivery") this.amountDelivery})
      : _productIds = productIds,
        _lineIds = lineIds;

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? state;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "date_order")
  final String? dateOrder;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "amount_total")
  final num? amountTotal;
// ignore: invalid_annotation_target
  final List<int>? _productIds;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "product_ids")
  List<int>? get productIds {
    final value = _productIds;
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
  @JsonKey(name: "amount_untaxed")
  final double? amountUntaxed;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "amount_tax")
  final double? amountTax;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "amount_delivery")
  final double? amountDelivery;

  @override
  String toString() {
    return 'OrderModel(id: $id, name: $name, state: $state, dateOrder: $dateOrder, amountTotal: $amountTotal, productIds: $productIds, lineIds: $lineIds, amountUntaxed: $amountUntaxed, amountTax: $amountTax, amountDelivery: $amountDelivery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.dateOrder, dateOrder) ||
                other.dateOrder == dateOrder) &&
            (identical(other.amountTotal, amountTotal) ||
                other.amountTotal == amountTotal) &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds) &&
            const DeepCollectionEquality().equals(other._lineIds, _lineIds) &&
            (identical(other.amountUntaxed, amountUntaxed) ||
                other.amountUntaxed == amountUntaxed) &&
            (identical(other.amountTax, amountTax) ||
                other.amountTax == amountTax) &&
            (identical(other.amountDelivery, amountDelivery) ||
                other.amountDelivery == amountDelivery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      state,
      dateOrder,
      amountTotal,
      const DeepCollectionEquality().hash(_productIds),
      const DeepCollectionEquality().hash(_lineIds),
      amountUntaxed,
      amountTax,
      amountDelivery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
          {final int? id,
          final String? name,
          final String? state,
          @JsonKey(name: "date_order") final String? dateOrder,
          @JsonKey(name: "amount_total") final num? amountTotal,
          @JsonKey(name: "product_ids") final List<int>? productIds,
          @JsonKey(name: "line_ids") final List<int>? lineIds,
          @JsonKey(name: "amount_untaxed") final double? amountUntaxed,
          @JsonKey(name: "amount_tax") final double? amountTax,
          @JsonKey(name: "amount_delivery") final double? amountDelivery}) =
      _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get state;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "date_order")
  String? get dateOrder;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "amount_total")
  num? get amountTotal;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "product_ids")
  List<int>? get productIds;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "line_ids")
  List<int>? get lineIds;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "amount_untaxed")
  double? get amountUntaxed;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "amount_tax")
  double? get amountTax;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "amount_delivery")
  double? get amountDelivery;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
