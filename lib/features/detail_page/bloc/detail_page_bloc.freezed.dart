// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getProductDetail,
    required TResult Function() resetProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getProductDetail,
    TResult? Function()? resetProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getProductDetail,
    TResult Function()? resetProductDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductDetail value) getProductDetail,
    required TResult Function(ResetGetProductDetail value) resetProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductDetail value)? getProductDetail,
    TResult? Function(ResetGetProductDetail value)? resetProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductDetail value)? getProductDetail,
    TResult Function(ResetGetProductDetail value)? resetProductDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPageEventCopyWith<$Res> {
  factory $DetailPageEventCopyWith(
          DetailPageEvent value, $Res Function(DetailPageEvent) then) =
      _$DetailPageEventCopyWithImpl<$Res, DetailPageEvent>;
}

/// @nodoc
class _$DetailPageEventCopyWithImpl<$Res, $Val extends DetailPageEvent>
    implements $DetailPageEventCopyWith<$Res> {
  _$DetailPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProductDetailCopyWith<$Res> {
  factory _$$GetProductDetailCopyWith(
          _$GetProductDetail value, $Res Function(_$GetProductDetail) then) =
      __$$GetProductDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetProductDetailCopyWithImpl<$Res>
    extends _$DetailPageEventCopyWithImpl<$Res, _$GetProductDetail>
    implements _$$GetProductDetailCopyWith<$Res> {
  __$$GetProductDetailCopyWithImpl(
      _$GetProductDetail _value, $Res Function(_$GetProductDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetProductDetail(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetProductDetail implements GetProductDetail {
  const _$GetProductDetail(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DetailPageEvent.getProductDetail(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductDetail &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductDetailCopyWith<_$GetProductDetail> get copyWith =>
      __$$GetProductDetailCopyWithImpl<_$GetProductDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getProductDetail,
    required TResult Function() resetProductDetail,
  }) {
    return getProductDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getProductDetail,
    TResult? Function()? resetProductDetail,
  }) {
    return getProductDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getProductDetail,
    TResult Function()? resetProductDetail,
    required TResult orElse(),
  }) {
    if (getProductDetail != null) {
      return getProductDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductDetail value) getProductDetail,
    required TResult Function(ResetGetProductDetail value) resetProductDetail,
  }) {
    return getProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductDetail value)? getProductDetail,
    TResult? Function(ResetGetProductDetail value)? resetProductDetail,
  }) {
    return getProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductDetail value)? getProductDetail,
    TResult Function(ResetGetProductDetail value)? resetProductDetail,
    required TResult orElse(),
  }) {
    if (getProductDetail != null) {
      return getProductDetail(this);
    }
    return orElse();
  }
}

abstract class GetProductDetail implements DetailPageEvent {
  const factory GetProductDetail(final int id) = _$GetProductDetail;

  int get id;
  @JsonKey(ignore: true)
  _$$GetProductDetailCopyWith<_$GetProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetGetProductDetailCopyWith<$Res> {
  factory _$$ResetGetProductDetailCopyWith(_$ResetGetProductDetail value,
          $Res Function(_$ResetGetProductDetail) then) =
      __$$ResetGetProductDetailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetGetProductDetailCopyWithImpl<$Res>
    extends _$DetailPageEventCopyWithImpl<$Res, _$ResetGetProductDetail>
    implements _$$ResetGetProductDetailCopyWith<$Res> {
  __$$ResetGetProductDetailCopyWithImpl(_$ResetGetProductDetail _value,
      $Res Function(_$ResetGetProductDetail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetGetProductDetail implements ResetGetProductDetail {
  const _$ResetGetProductDetail();

  @override
  String toString() {
    return 'DetailPageEvent.resetProductDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetGetProductDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getProductDetail,
    required TResult Function() resetProductDetail,
  }) {
    return resetProductDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getProductDetail,
    TResult? Function()? resetProductDetail,
  }) {
    return resetProductDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getProductDetail,
    TResult Function()? resetProductDetail,
    required TResult orElse(),
  }) {
    if (resetProductDetail != null) {
      return resetProductDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductDetail value) getProductDetail,
    required TResult Function(ResetGetProductDetail value) resetProductDetail,
  }) {
    return resetProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductDetail value)? getProductDetail,
    TResult? Function(ResetGetProductDetail value)? resetProductDetail,
  }) {
    return resetProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductDetail value)? getProductDetail,
    TResult Function(ResetGetProductDetail value)? resetProductDetail,
    required TResult orElse(),
  }) {
    if (resetProductDetail != null) {
      return resetProductDetail(this);
    }
    return orElse();
  }
}

abstract class ResetGetProductDetail implements DetailPageEvent {
  const factory ResetGetProductDetail() = _$ResetGetProductDetail;
}

/// @nodoc
mixin _$DetailPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productDetailLoading,
    required TResult Function(ProductModel productModel) productDetailLoaded,
    required TResult Function(String errorMsg) productDetailError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(ProductModel productModel)? productDetailLoaded,
    TResult? Function(String errorMsg)? productDetailError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(ProductModel productModel)? productDetailLoaded,
    TResult Function(String errorMsg)? productDetailError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
    required TResult Function(ProductDetailError value) productDetailError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult? Function(ProductDetailError value)? productDetailError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult Function(ProductDetailError value)? productDetailError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPageStateCopyWith<$Res> {
  factory $DetailPageStateCopyWith(
          DetailPageState value, $Res Function(DetailPageState) then) =
      _$DetailPageStateCopyWithImpl<$Res, DetailPageState>;
}

/// @nodoc
class _$DetailPageStateCopyWithImpl<$Res, $Val extends DetailPageState>
    implements $DetailPageStateCopyWith<$Res> {
  _$DetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$DetailPageStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'DetailPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productDetailLoading,
    required TResult Function(ProductModel productModel) productDetailLoaded,
    required TResult Function(String errorMsg) productDetailError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(ProductModel productModel)? productDetailLoaded,
    TResult? Function(String errorMsg)? productDetailError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(ProductModel productModel)? productDetailLoaded,
    TResult Function(String errorMsg)? productDetailError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
    required TResult Function(ProductDetailError value) productDetailError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult? Function(ProductDetailError value)? productDetailError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult Function(ProductDetailError value)? productDetailError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DetailPageState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$ProductDetailLoadingCopyWith<$Res> {
  factory _$$ProductDetailLoadingCopyWith(_$ProductDetailLoading value,
          $Res Function(_$ProductDetailLoading) then) =
      __$$ProductDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductDetailLoadingCopyWithImpl<$Res>
    extends _$DetailPageStateCopyWithImpl<$Res, _$ProductDetailLoading>
    implements _$$ProductDetailLoadingCopyWith<$Res> {
  __$$ProductDetailLoadingCopyWithImpl(_$ProductDetailLoading _value,
      $Res Function(_$ProductDetailLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductDetailLoading implements ProductDetailLoading {
  const _$ProductDetailLoading();

  @override
  String toString() {
    return 'DetailPageState.productDetailLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productDetailLoading,
    required TResult Function(ProductModel productModel) productDetailLoaded,
    required TResult Function(String errorMsg) productDetailError,
  }) {
    return productDetailLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(ProductModel productModel)? productDetailLoaded,
    TResult? Function(String errorMsg)? productDetailError,
  }) {
    return productDetailLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(ProductModel productModel)? productDetailLoaded,
    TResult Function(String errorMsg)? productDetailError,
    required TResult orElse(),
  }) {
    if (productDetailLoading != null) {
      return productDetailLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
    required TResult Function(ProductDetailError value) productDetailError,
  }) {
    return productDetailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult? Function(ProductDetailError value)? productDetailError,
  }) {
    return productDetailLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult Function(ProductDetailError value)? productDetailError,
    required TResult orElse(),
  }) {
    if (productDetailLoading != null) {
      return productDetailLoading(this);
    }
    return orElse();
  }
}

abstract class ProductDetailLoading implements DetailPageState {
  const factory ProductDetailLoading() = _$ProductDetailLoading;
}

/// @nodoc
abstract class _$$ProductDetailLoadedCopyWith<$Res> {
  factory _$$ProductDetailLoadedCopyWith(_$ProductDetailLoaded value,
          $Res Function(_$ProductDetailLoaded) then) =
      __$$ProductDetailLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel productModel});

  $ProductModelCopyWith<$Res> get productModel;
}

/// @nodoc
class __$$ProductDetailLoadedCopyWithImpl<$Res>
    extends _$DetailPageStateCopyWithImpl<$Res, _$ProductDetailLoaded>
    implements _$$ProductDetailLoadedCopyWith<$Res> {
  __$$ProductDetailLoadedCopyWithImpl(
      _$ProductDetailLoaded _value, $Res Function(_$ProductDetailLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModel = null,
  }) {
    return _then(_$ProductDetailLoaded(
      null == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get productModel {
    return $ProductModelCopyWith<$Res>(_value.productModel, (value) {
      return _then(_value.copyWith(productModel: value));
    });
  }
}

/// @nodoc

class _$ProductDetailLoaded implements ProductDetailLoaded {
  const _$ProductDetailLoaded(this.productModel);

  @override
  final ProductModel productModel;

  @override
  String toString() {
    return 'DetailPageState.productDetailLoaded(productModel: $productModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailLoaded &&
            (identical(other.productModel, productModel) ||
                other.productModel == productModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailLoadedCopyWith<_$ProductDetailLoaded> get copyWith =>
      __$$ProductDetailLoadedCopyWithImpl<_$ProductDetailLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productDetailLoading,
    required TResult Function(ProductModel productModel) productDetailLoaded,
    required TResult Function(String errorMsg) productDetailError,
  }) {
    return productDetailLoaded(productModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(ProductModel productModel)? productDetailLoaded,
    TResult? Function(String errorMsg)? productDetailError,
  }) {
    return productDetailLoaded?.call(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(ProductModel productModel)? productDetailLoaded,
    TResult Function(String errorMsg)? productDetailError,
    required TResult orElse(),
  }) {
    if (productDetailLoaded != null) {
      return productDetailLoaded(productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
    required TResult Function(ProductDetailError value) productDetailError,
  }) {
    return productDetailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult? Function(ProductDetailError value)? productDetailError,
  }) {
    return productDetailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult Function(ProductDetailError value)? productDetailError,
    required TResult orElse(),
  }) {
    if (productDetailLoaded != null) {
      return productDetailLoaded(this);
    }
    return orElse();
  }
}

abstract class ProductDetailLoaded implements DetailPageState {
  const factory ProductDetailLoaded(final ProductModel productModel) =
      _$ProductDetailLoaded;

  ProductModel get productModel;
  @JsonKey(ignore: true)
  _$$ProductDetailLoadedCopyWith<_$ProductDetailLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailErrorCopyWith<$Res> {
  factory _$$ProductDetailErrorCopyWith(_$ProductDetailError value,
          $Res Function(_$ProductDetailError) then) =
      __$$ProductDetailErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$ProductDetailErrorCopyWithImpl<$Res>
    extends _$DetailPageStateCopyWithImpl<$Res, _$ProductDetailError>
    implements _$$ProductDetailErrorCopyWith<$Res> {
  __$$ProductDetailErrorCopyWithImpl(
      _$ProductDetailError _value, $Res Function(_$ProductDetailError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$ProductDetailError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductDetailError implements ProductDetailError {
  const _$ProductDetailError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'DetailPageState.productDetailError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailErrorCopyWith<_$ProductDetailError> get copyWith =>
      __$$ProductDetailErrorCopyWithImpl<_$ProductDetailError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productDetailLoading,
    required TResult Function(ProductModel productModel) productDetailLoaded,
    required TResult Function(String errorMsg) productDetailError,
  }) {
    return productDetailError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(ProductModel productModel)? productDetailLoaded,
    TResult? Function(String errorMsg)? productDetailError,
  }) {
    return productDetailError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(ProductModel productModel)? productDetailLoaded,
    TResult Function(String errorMsg)? productDetailError,
    required TResult orElse(),
  }) {
    if (productDetailError != null) {
      return productDetailError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
    required TResult Function(ProductDetailError value) productDetailError,
  }) {
    return productDetailError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult? Function(ProductDetailError value)? productDetailError,
  }) {
    return productDetailError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    TResult Function(ProductDetailError value)? productDetailError,
    required TResult orElse(),
  }) {
    if (productDetailError != null) {
      return productDetailError(this);
    }
    return orElse();
  }
}

abstract class ProductDetailError implements DetailPageState {
  const factory ProductDetailError(final String errorMsg) =
      _$ProductDetailError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$ProductDetailErrorCopyWith<_$ProductDetailError> get copyWith =>
      throw _privateConstructorUsedError;
}
