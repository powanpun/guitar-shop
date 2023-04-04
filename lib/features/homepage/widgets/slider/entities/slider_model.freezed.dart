// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SliderModel _$SliderModelFromJson(Map<String, dynamic> json) {
  return _SliderModel.fromJson(json);
}

/// @nodoc
mixin _$SliderModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get order =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "click_action")
  String? get clickAction =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "product_id")
  Object? get productId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "product_ecomm_category_id")
  Object? get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderModelCopyWith<SliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderModelCopyWith<$Res> {
  factory $SliderModelCopyWith(
          SliderModel value, $Res Function(SliderModel) then) =
      _$SliderModelCopyWithImpl<$Res, SliderModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      int? order,
      @JsonKey(name: "click_action") String? clickAction,
      @JsonKey(name: "product_id") Object? productId,
      @JsonKey(name: "product_ecomm_category_id") Object? categoryId});
}

/// @nodoc
class _$SliderModelCopyWithImpl<$Res, $Val extends SliderModel>
    implements $SliderModelCopyWith<$Res> {
  _$SliderModelCopyWithImpl(this._value, this._then);

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
    Object? clickAction = freezed,
    Object? productId = freezed,
    Object? categoryId = freezed,
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
      clickAction: freezed == clickAction
          ? _value.clickAction
          : clickAction // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId ? _value.productId : productId,
      categoryId: freezed == categoryId ? _value.categoryId : categoryId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SliderModelCopyWith<$Res>
    implements $SliderModelCopyWith<$Res> {
  factory _$$_SliderModelCopyWith(
          _$_SliderModel value, $Res Function(_$_SliderModel) then) =
      __$$_SliderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      int? order,
      @JsonKey(name: "click_action") String? clickAction,
      @JsonKey(name: "product_id") Object? productId,
      @JsonKey(name: "product_ecomm_category_id") Object? categoryId});
}

/// @nodoc
class __$$_SliderModelCopyWithImpl<$Res>
    extends _$SliderModelCopyWithImpl<$Res, _$_SliderModel>
    implements _$$_SliderModelCopyWith<$Res> {
  __$$_SliderModelCopyWithImpl(
      _$_SliderModel _value, $Res Function(_$_SliderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? order = freezed,
    Object? clickAction = freezed,
    Object? productId = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_$_SliderModel(
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
      clickAction: freezed == clickAction
          ? _value.clickAction
          : clickAction // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId ? _value.productId : productId,
      categoryId: freezed == categoryId ? _value.categoryId : categoryId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SliderModel implements _SliderModel {
  const _$_SliderModel(
      {this.id,
      this.name,
      this.image,
      this.order,
      @JsonKey(name: "click_action") this.clickAction,
      @JsonKey(name: "product_id") this.productId,
      @JsonKey(name: "product_ecomm_category_id") this.categoryId});

  factory _$_SliderModel.fromJson(Map<String, dynamic> json) =>
      _$$_SliderModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? order;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "click_action")
  final String? clickAction;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "product_id")
  final Object? productId;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "product_ecomm_category_id")
  final Object? categoryId;

  @override
  String toString() {
    return 'SliderModel(id: $id, name: $name, image: $image, order: $order, clickAction: $clickAction, productId: $productId, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SliderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.clickAction, clickAction) ||
                other.clickAction == clickAction) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      order,
      clickAction,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(categoryId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SliderModelCopyWith<_$_SliderModel> get copyWith =>
      __$$_SliderModelCopyWithImpl<_$_SliderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SliderModelToJson(
      this,
    );
  }
}

abstract class _SliderModel implements SliderModel {
  const factory _SliderModel(
      {final int? id,
      final String? name,
      final String? image,
      final int? order,
      @JsonKey(name: "click_action")
          final String? clickAction,
      @JsonKey(name: "product_id")
          final Object? productId,
      @JsonKey(name: "product_ecomm_category_id")
          final Object? categoryId}) = _$_SliderModel;

  factory _SliderModel.fromJson(Map<String, dynamic> json) =
      _$_SliderModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  int? get order;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "click_action")
  String? get clickAction;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "product_id")
  Object? get productId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "product_ecomm_category_id")
  Object? get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_SliderModelCopyWith<_$_SliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
