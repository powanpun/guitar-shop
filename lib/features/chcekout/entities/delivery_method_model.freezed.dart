// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivery_method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryMethodModel _$DeliveryMethodModelFromJson(Map<String, dynamic> json) {
  return _DeliveryMethodModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryMethodModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "fixed_price")
  num? get fixedPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryMethodModelCopyWith<DeliveryMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMethodModelCopyWith<$Res> {
  factory $DeliveryMethodModelCopyWith(
          DeliveryMethodModel value, $Res Function(DeliveryMethodModel) then) =
      _$DeliveryMethodModelCopyWithImpl<$Res, DeliveryMethodModel>;
  @useResult
  $Res call(
      {int? id, String? name, @JsonKey(name: "fixed_price") num? fixedPrice});
}

/// @nodoc
class _$DeliveryMethodModelCopyWithImpl<$Res, $Val extends DeliveryMethodModel>
    implements $DeliveryMethodModelCopyWith<$Res> {
  _$DeliveryMethodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fixedPrice = freezed,
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
      fixedPrice: freezed == fixedPrice
          ? _value.fixedPrice
          : fixedPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryMethodModelCopyWith<$Res>
    implements $DeliveryMethodModelCopyWith<$Res> {
  factory _$$_DeliveryMethodModelCopyWith(_$_DeliveryMethodModel value,
          $Res Function(_$_DeliveryMethodModel) then) =
      __$$_DeliveryMethodModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, @JsonKey(name: "fixed_price") num? fixedPrice});
}

/// @nodoc
class __$$_DeliveryMethodModelCopyWithImpl<$Res>
    extends _$DeliveryMethodModelCopyWithImpl<$Res, _$_DeliveryMethodModel>
    implements _$$_DeliveryMethodModelCopyWith<$Res> {
  __$$_DeliveryMethodModelCopyWithImpl(_$_DeliveryMethodModel _value,
      $Res Function(_$_DeliveryMethodModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fixedPrice = freezed,
  }) {
    return _then(_$_DeliveryMethodModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fixedPrice: freezed == fixedPrice
          ? _value.fixedPrice
          : fixedPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryMethodModel implements _DeliveryMethodModel {
  const _$_DeliveryMethodModel(
      {this.id, this.name, @JsonKey(name: "fixed_price") this.fixedPrice});

  factory _$_DeliveryMethodModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryMethodModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "fixed_price")
  final num? fixedPrice;

  @override
  String toString() {
    return 'DeliveryMethodModel(id: $id, name: $name, fixedPrice: $fixedPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryMethodModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fixedPrice, fixedPrice) ||
                other.fixedPrice == fixedPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fixedPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryMethodModelCopyWith<_$_DeliveryMethodModel> get copyWith =>
      __$$_DeliveryMethodModelCopyWithImpl<_$_DeliveryMethodModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryMethodModelToJson(
      this,
    );
  }
}

abstract class _DeliveryMethodModel implements DeliveryMethodModel {
  const factory _DeliveryMethodModel(
          {final int? id,
          final String? name,
          @JsonKey(name: "fixed_price") final num? fixedPrice}) =
      _$_DeliveryMethodModel;

  factory _DeliveryMethodModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryMethodModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "fixed_price")
  num? get fixedPrice;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryMethodModelCopyWith<_$_DeliveryMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}
