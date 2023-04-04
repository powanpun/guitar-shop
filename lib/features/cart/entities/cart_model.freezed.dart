// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "product_uom_qty")
  num? get totalQuantity =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "price_unit")
  num? get priceUnit =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "price_subtotal")
  num? get priceSubTotal =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "product_id")
  List<Object>? get productId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "price_tax")
  double? get priceTax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: "product_uom_qty") num? totalQuantity,
      @JsonKey(name: "price_unit") num? priceUnit,
      @JsonKey(name: "price_subtotal") num? priceSubTotal,
      @JsonKey(name: "product_id") List<Object>? productId,
      @JsonKey(name: "price_tax") double? priceTax});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? totalQuantity = freezed,
    Object? priceUnit = freezed,
    Object? priceSubTotal = freezed,
    Object? productId = freezed,
    Object? priceTax = freezed,
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
      totalQuantity: freezed == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      priceUnit: freezed == priceUnit
          ? _value.priceUnit
          : priceUnit // ignore: cast_nullable_to_non_nullable
              as num?,
      priceSubTotal: freezed == priceSubTotal
          ? _value.priceSubTotal
          : priceSubTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      priceTax: freezed == priceTax
          ? _value.priceTax
          : priceTax // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: "product_uom_qty") num? totalQuantity,
      @JsonKey(name: "price_unit") num? priceUnit,
      @JsonKey(name: "price_subtotal") num? priceSubTotal,
      @JsonKey(name: "product_id") List<Object>? productId,
      @JsonKey(name: "price_tax") double? priceTax});
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? totalQuantity = freezed,
    Object? priceUnit = freezed,
    Object? priceSubTotal = freezed,
    Object? productId = freezed,
    Object? priceTax = freezed,
  }) {
    return _then(_$_CartModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuantity: freezed == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as num?,
      priceUnit: freezed == priceUnit
          ? _value.priceUnit
          : priceUnit // ignore: cast_nullable_to_non_nullable
              as num?,
      priceSubTotal: freezed == priceSubTotal
          ? _value.priceSubTotal
          : priceSubTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      productId: freezed == productId
          ? _value._productId
          : productId // ignore: cast_nullable_to_non_nullable
              as List<Object>?,
      priceTax: freezed == priceTax
          ? _value.priceTax
          : priceTax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel implements _CartModel {
  const _$_CartModel(
      {this.id,
      this.name,
      @JsonKey(name: "product_uom_qty") this.totalQuantity,
      @JsonKey(name: "price_unit") this.priceUnit,
      @JsonKey(name: "price_subtotal") this.priceSubTotal,
      @JsonKey(name: "product_id") final List<Object>? productId,
      @JsonKey(name: "price_tax") this.priceTax})
      : _productId = productId;

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "product_uom_qty")
  final num? totalQuantity;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "price_unit")
  final num? priceUnit;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "price_subtotal")
  final num? priceSubTotal;
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
  @override
  @JsonKey(name: "price_tax")
  final double? priceTax;

  @override
  String toString() {
    return 'CartModel(id: $id, name: $name, totalQuantity: $totalQuantity, priceUnit: $priceUnit, priceSubTotal: $priceSubTotal, productId: $productId, priceTax: $priceTax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.priceUnit, priceUnit) ||
                other.priceUnit == priceUnit) &&
            (identical(other.priceSubTotal, priceSubTotal) ||
                other.priceSubTotal == priceSubTotal) &&
            const DeepCollectionEquality()
                .equals(other._productId, _productId) &&
            (identical(other.priceTax, priceTax) ||
                other.priceTax == priceTax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      totalQuantity,
      priceUnit,
      priceSubTotal,
      const DeepCollectionEquality().hash(_productId),
      priceTax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {final int? id,
      final String? name,
      @JsonKey(name: "product_uom_qty") final num? totalQuantity,
      @JsonKey(name: "price_unit") final num? priceUnit,
      @JsonKey(name: "price_subtotal") final num? priceSubTotal,
      @JsonKey(name: "product_id") final List<Object>? productId,
      @JsonKey(name: "price_tax") final double? priceTax}) = _$_CartModel;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "product_uom_qty")
  num? get totalQuantity;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "price_unit")
  num? get priceUnit;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "price_subtotal")
  num? get priceSubTotal;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "product_id")
  List<Object>? get productId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "price_tax")
  double? get priceTax;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
