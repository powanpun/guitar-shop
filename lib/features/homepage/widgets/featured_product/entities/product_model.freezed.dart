// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int? get id => throw _privateConstructorUsedError; // String? name,
  String? get image_1920 => throw _privateConstructorUsedError;
  Object? get description =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "list_price")
  num? get listPrice =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "display_name")
  String? get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "product_variant_image_ids")
  List<String>? get listImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int? id,
      String? image_1920,
      Object? description,
      @JsonKey(name: "list_price") num? listPrice,
      @JsonKey(name: "display_name") String? name,
      @JsonKey(name: "product_variant_image_ids") List<String>? listImage});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image_1920 = freezed,
    Object? description = freezed,
    Object? listPrice = freezed,
    Object? name = freezed,
    Object? listImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image_1920: freezed == image_1920
          ? _value.image_1920
          : image_1920 // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description ? _value.description : description,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      listImage: freezed == listImage
          ? _value.listImage
          : listImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image_1920,
      Object? description,
      @JsonKey(name: "list_price") num? listPrice,
      @JsonKey(name: "display_name") String? name,
      @JsonKey(name: "product_variant_image_ids") List<String>? listImage});
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image_1920 = freezed,
    Object? description = freezed,
    Object? listPrice = freezed,
    Object? name = freezed,
    Object? listImage = freezed,
  }) {
    return _then(_$_ProductModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image_1920: freezed == image_1920
          ? _value.image_1920
          : image_1920 // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description ? _value.description : description,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      listImage: freezed == listImage
          ? _value._listImage
          : listImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {this.id,
      this.image_1920,
      this.description,
      @JsonKey(name: "list_price")
          this.listPrice,
      @JsonKey(name: "display_name")
          this.name,
      @JsonKey(name: "product_variant_image_ids")
          final List<String>? listImage})
      : _listImage = listImage;

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final int? id;
// String? name,
  @override
  final String? image_1920;
  @override
  final Object? description;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "list_price")
  final num? listPrice;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "display_name")
  final String? name;
// ignore: invalid_annotation_target
  final List<String>? _listImage;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "product_variant_image_ids")
  List<String>? get listImage {
    final value = _listImage;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, image_1920: $image_1920, description: $description, listPrice: $listPrice, name: $name, listImage: $listImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image_1920, image_1920) ||
                other.image_1920 == image_1920) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._listImage, _listImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image_1920,
      const DeepCollectionEquality().hash(description),
      listPrice,
      name,
      const DeepCollectionEquality().hash(_listImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {final int? id,
      final String? image_1920,
      final Object? description,
      @JsonKey(name: "list_price")
          final num? listPrice,
      @JsonKey(name: "display_name")
          final String? name,
      @JsonKey(name: "product_variant_image_ids")
          final List<String>? listImage}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int? get id;
  @override // String? name,
  String? get image_1920;
  @override
  Object? get description;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "list_price")
  num? get listPrice;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "display_name")
  String? get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "product_variant_image_ids")
  List<String>? get listImage;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
