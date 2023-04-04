// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function(CartRequestEntity cartRequestEntity) addToCart,
    required TResult Function(CartRequestEntity cartRequestEntity) updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function(CartRequestEntity cartRequestEntity)? addToCart,
    TResult? Function(CartRequestEntity cartRequestEntity)? updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function(CartRequestEntity cartRequestEntity)? addToCart,
    TResult Function(CartRequestEntity cartRequestEntity)? updateCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserCart value) getUserCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserCart value)? getUserCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserCart value)? getUserCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserCartCopyWith<$Res> {
  factory _$$GetUserCartCopyWith(
          _$GetUserCart value, $Res Function(_$GetUserCart) then) =
      __$$GetUserCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetUserCart>
    implements _$$GetUserCartCopyWith<$Res> {
  __$$GetUserCartCopyWithImpl(
      _$GetUserCart _value, $Res Function(_$GetUserCart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserCart implements GetUserCart {
  const _$GetUserCart();

  @override
  String toString() {
    return 'CartEvent.getUserCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function(CartRequestEntity cartRequestEntity) addToCart,
    required TResult Function(CartRequestEntity cartRequestEntity) updateCart,
  }) {
    return getUserCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function(CartRequestEntity cartRequestEntity)? addToCart,
    TResult? Function(CartRequestEntity cartRequestEntity)? updateCart,
  }) {
    return getUserCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function(CartRequestEntity cartRequestEntity)? addToCart,
    TResult Function(CartRequestEntity cartRequestEntity)? updateCart,
    required TResult orElse(),
  }) {
    if (getUserCart != null) {
      return getUserCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserCart value) getUserCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
  }) {
    return getUserCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserCart value)? getUserCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
  }) {
    return getUserCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserCart value)? getUserCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    required TResult orElse(),
  }) {
    if (getUserCart != null) {
      return getUserCart(this);
    }
    return orElse();
  }
}

abstract class GetUserCart implements CartEvent {
  const factory GetUserCart() = _$GetUserCart;
}

/// @nodoc
abstract class _$$AddToCartCopyWith<$Res> {
  factory _$$AddToCartCopyWith(
          _$AddToCart value, $Res Function(_$AddToCart) then) =
      __$$AddToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CartRequestEntity cartRequestEntity});
}

/// @nodoc
class __$$AddToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCart>
    implements _$$AddToCartCopyWith<$Res> {
  __$$AddToCartCopyWithImpl(
      _$AddToCart _value, $Res Function(_$AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartRequestEntity = null,
  }) {
    return _then(_$AddToCart(
      null == cartRequestEntity
          ? _value.cartRequestEntity
          : cartRequestEntity // ignore: cast_nullable_to_non_nullable
              as CartRequestEntity,
    ));
  }
}

/// @nodoc

class _$AddToCart implements AddToCart {
  const _$AddToCart(this.cartRequestEntity);

  @override
  final CartRequestEntity cartRequestEntity;

  @override
  String toString() {
    return 'CartEvent.addToCart(cartRequestEntity: $cartRequestEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCart &&
            (identical(other.cartRequestEntity, cartRequestEntity) ||
                other.cartRequestEntity == cartRequestEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartRequestEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      __$$AddToCartCopyWithImpl<_$AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function(CartRequestEntity cartRequestEntity) addToCart,
    required TResult Function(CartRequestEntity cartRequestEntity) updateCart,
  }) {
    return addToCart(cartRequestEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function(CartRequestEntity cartRequestEntity)? addToCart,
    TResult? Function(CartRequestEntity cartRequestEntity)? updateCart,
  }) {
    return addToCart?.call(cartRequestEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function(CartRequestEntity cartRequestEntity)? addToCart,
    TResult Function(CartRequestEntity cartRequestEntity)? updateCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(cartRequestEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserCart value) getUserCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserCart value)? getUserCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserCart value)? getUserCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements CartEvent {
  const factory AddToCart(final CartRequestEntity cartRequestEntity) =
      _$AddToCart;

  CartRequestEntity get cartRequestEntity;
  @JsonKey(ignore: true)
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartCopyWith<$Res> {
  factory _$$UpdateCartCopyWith(
          _$UpdateCart value, $Res Function(_$UpdateCart) then) =
      __$$UpdateCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CartRequestEntity cartRequestEntity});
}

/// @nodoc
class __$$UpdateCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCart>
    implements _$$UpdateCartCopyWith<$Res> {
  __$$UpdateCartCopyWithImpl(
      _$UpdateCart _value, $Res Function(_$UpdateCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartRequestEntity = null,
  }) {
    return _then(_$UpdateCart(
      null == cartRequestEntity
          ? _value.cartRequestEntity
          : cartRequestEntity // ignore: cast_nullable_to_non_nullable
              as CartRequestEntity,
    ));
  }
}

/// @nodoc

class _$UpdateCart implements UpdateCart {
  const _$UpdateCart(this.cartRequestEntity);

  @override
  final CartRequestEntity cartRequestEntity;

  @override
  String toString() {
    return 'CartEvent.updateCart(cartRequestEntity: $cartRequestEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCart &&
            (identical(other.cartRequestEntity, cartRequestEntity) ||
                other.cartRequestEntity == cartRequestEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartRequestEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartCopyWith<_$UpdateCart> get copyWith =>
      __$$UpdateCartCopyWithImpl<_$UpdateCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserCart,
    required TResult Function(CartRequestEntity cartRequestEntity) addToCart,
    required TResult Function(CartRequestEntity cartRequestEntity) updateCart,
  }) {
    return updateCart(cartRequestEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserCart,
    TResult? Function(CartRequestEntity cartRequestEntity)? addToCart,
    TResult? Function(CartRequestEntity cartRequestEntity)? updateCart,
  }) {
    return updateCart?.call(cartRequestEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserCart,
    TResult Function(CartRequestEntity cartRequestEntity)? addToCart,
    TResult Function(CartRequestEntity cartRequestEntity)? updateCart,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(cartRequestEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserCart value) getUserCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserCart value)? getUserCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
  }) {
    return updateCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserCart value)? getUserCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class UpdateCart implements CartEvent {
  const factory UpdateCart(final CartRequestEntity cartRequestEntity) =
      _$UpdateCart;

  CartRequestEntity get cartRequestEntity;
  @JsonKey(ignore: true)
  _$$UpdateCartCopyWith<_$UpdateCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(BaseResultModel result) cartLoaded,
    required TResult Function(String errorMsg) cartError,
    required TResult Function(String emptyMsg) cartEmpty,
    required TResult Function(String successMsg) cartUpdated,
    required TResult Function(String errorMsg) cartUpdateError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(BaseResultModel result)? cartLoaded,
    TResult? Function(String errorMsg)? cartError,
    TResult? Function(String emptyMsg)? cartEmpty,
    TResult? Function(String successMsg)? cartUpdated,
    TResult? Function(String errorMsg)? cartUpdateError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(BaseResultModel result)? cartLoaded,
    TResult Function(String errorMsg)? cartError,
    TResult Function(String emptyMsg)? cartEmpty,
    TResult Function(String successMsg)? cartUpdated,
    TResult Function(String errorMsg)? cartUpdateError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(CartError value) cartError,
    required TResult Function(CartEmpty value) cartEmpty,
    required TResult Function(CartUpdated value) cartUpdated,
    required TResult Function(CartUpdateError value) cartUpdateError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(CartError value)? cartError,
    TResult? Function(CartEmpty value)? cartEmpty,
    TResult? Function(CartUpdated value)? cartUpdated,
    TResult? Function(CartUpdateError value)? cartUpdateError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(CartError value)? cartError,
    TResult Function(CartEmpty value)? cartEmpty,
    TResult Function(CartUpdated value)? cartUpdated,
    TResult Function(CartUpdateError value)? cartUpdateError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

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
    extends _$CartStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CartState.initial()';
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
    required TResult Function() cartLoading,
    required TResult Function(BaseResultModel result) cartLoaded,
    required TResult Function(String errorMsg) cartError,
    required TResult Function(String emptyMsg) cartEmpty,
    required TResult Function(String successMsg) cartUpdated,
    required TResult Function(String errorMsg) cartUpdateError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(BaseResultModel result)? cartLoaded,
    TResult? Function(String errorMsg)? cartError,
    TResult? Function(String emptyMsg)? cartEmpty,
    TResult? Function(String successMsg)? cartUpdated,
    TResult? Function(String errorMsg)? cartUpdateError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(BaseResultModel result)? cartLoaded,
    TResult Function(String errorMsg)? cartError,
    TResult Function(String emptyMsg)? cartEmpty,
    TResult Function(String successMsg)? cartUpdated,
    TResult Function(String errorMsg)? cartUpdateError,
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
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(CartError value) cartError,
    required TResult Function(CartEmpty value) cartEmpty,
    required TResult Function(CartUpdated value) cartUpdated,
    required TResult Function(CartUpdateError value) cartUpdateError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(CartError value)? cartError,
    TResult? Function(CartEmpty value)? cartEmpty,
    TResult? Function(CartUpdated value)? cartUpdated,
    TResult? Function(CartUpdateError value)? cartUpdateError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(CartError value)? cartError,
    TResult Function(CartEmpty value)? cartEmpty,
    TResult Function(CartUpdated value)? cartUpdated,
    TResult Function(CartUpdateError value)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CartState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CartLoadingCopyWith<$Res> {
  factory _$$CartLoadingCopyWith(
          _$CartLoading value, $Res Function(_$CartLoading) then) =
      __$$CartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoading>
    implements _$$CartLoadingCopyWith<$Res> {
  __$$CartLoadingCopyWithImpl(
      _$CartLoading _value, $Res Function(_$CartLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartLoading implements CartLoading {
  const _$CartLoading();

  @override
  String toString() {
    return 'CartState.cartLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(BaseResultModel result) cartLoaded,
    required TResult Function(String errorMsg) cartError,
    required TResult Function(String emptyMsg) cartEmpty,
    required TResult Function(String successMsg) cartUpdated,
    required TResult Function(String errorMsg) cartUpdateError,
  }) {
    return cartLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(BaseResultModel result)? cartLoaded,
    TResult? Function(String errorMsg)? cartError,
    TResult? Function(String emptyMsg)? cartEmpty,
    TResult? Function(String successMsg)? cartUpdated,
    TResult? Function(String errorMsg)? cartUpdateError,
  }) {
    return cartLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(BaseResultModel result)? cartLoaded,
    TResult Function(String errorMsg)? cartError,
    TResult Function(String emptyMsg)? cartEmpty,
    TResult Function(String successMsg)? cartUpdated,
    TResult Function(String errorMsg)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartLoading != null) {
      return cartLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(CartError value) cartError,
    required TResult Function(CartEmpty value) cartEmpty,
    required TResult Function(CartUpdated value) cartUpdated,
    required TResult Function(CartUpdateError value) cartUpdateError,
  }) {
    return cartLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(CartError value)? cartError,
    TResult? Function(CartEmpty value)? cartEmpty,
    TResult? Function(CartUpdated value)? cartUpdated,
    TResult? Function(CartUpdateError value)? cartUpdateError,
  }) {
    return cartLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(CartError value)? cartError,
    TResult Function(CartEmpty value)? cartEmpty,
    TResult Function(CartUpdated value)? cartUpdated,
    TResult Function(CartUpdateError value)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartLoading != null) {
      return cartLoading(this);
    }
    return orElse();
  }
}

abstract class CartLoading implements CartState {
  const factory CartLoading() = _$CartLoading;
}

/// @nodoc
abstract class _$$CartLoadedCopyWith<$Res> {
  factory _$$CartLoadedCopyWith(
          _$CartLoaded value, $Res Function(_$CartLoaded) then) =
      __$$CartLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseResultModel result});

  $BaseResultModelCopyWith<$Res> get result;
}

/// @nodoc
class __$$CartLoadedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoaded>
    implements _$$CartLoadedCopyWith<$Res> {
  __$$CartLoadedCopyWithImpl(
      _$CartLoaded _value, $Res Function(_$CartLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$CartLoaded(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as BaseResultModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseResultModelCopyWith<$Res> get result {
    return $BaseResultModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$CartLoaded implements CartLoaded {
  const _$CartLoaded(this.result);

  @override
  final BaseResultModel result;

  @override
  String toString() {
    return 'CartState.cartLoaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartLoaded &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadedCopyWith<_$CartLoaded> get copyWith =>
      __$$CartLoadedCopyWithImpl<_$CartLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(BaseResultModel result) cartLoaded,
    required TResult Function(String errorMsg) cartError,
    required TResult Function(String emptyMsg) cartEmpty,
    required TResult Function(String successMsg) cartUpdated,
    required TResult Function(String errorMsg) cartUpdateError,
  }) {
    return cartLoaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(BaseResultModel result)? cartLoaded,
    TResult? Function(String errorMsg)? cartError,
    TResult? Function(String emptyMsg)? cartEmpty,
    TResult? Function(String successMsg)? cartUpdated,
    TResult? Function(String errorMsg)? cartUpdateError,
  }) {
    return cartLoaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(BaseResultModel result)? cartLoaded,
    TResult Function(String errorMsg)? cartError,
    TResult Function(String emptyMsg)? cartEmpty,
    TResult Function(String successMsg)? cartUpdated,
    TResult Function(String errorMsg)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartLoaded != null) {
      return cartLoaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(CartError value) cartError,
    required TResult Function(CartEmpty value) cartEmpty,
    required TResult Function(CartUpdated value) cartUpdated,
    required TResult Function(CartUpdateError value) cartUpdateError,
  }) {
    return cartLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(CartError value)? cartError,
    TResult? Function(CartEmpty value)? cartEmpty,
    TResult? Function(CartUpdated value)? cartUpdated,
    TResult? Function(CartUpdateError value)? cartUpdateError,
  }) {
    return cartLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(CartError value)? cartError,
    TResult Function(CartEmpty value)? cartEmpty,
    TResult Function(CartUpdated value)? cartUpdated,
    TResult Function(CartUpdateError value)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartLoaded != null) {
      return cartLoaded(this);
    }
    return orElse();
  }
}

abstract class CartLoaded implements CartState {
  const factory CartLoaded(final BaseResultModel result) = _$CartLoaded;

  BaseResultModel get result;
  @JsonKey(ignore: true)
  _$$CartLoadedCopyWith<_$CartLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartErrorCopyWith<$Res> {
  factory _$$CartErrorCopyWith(
          _$CartError value, $Res Function(_$CartError) then) =
      __$$CartErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$CartErrorCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartError>
    implements _$$CartErrorCopyWith<$Res> {
  __$$CartErrorCopyWithImpl(
      _$CartError _value, $Res Function(_$CartError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$CartError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartError implements CartError {
  const _$CartError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'CartState.cartError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartErrorCopyWith<_$CartError> get copyWith =>
      __$$CartErrorCopyWithImpl<_$CartError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(BaseResultModel result) cartLoaded,
    required TResult Function(String errorMsg) cartError,
    required TResult Function(String emptyMsg) cartEmpty,
    required TResult Function(String successMsg) cartUpdated,
    required TResult Function(String errorMsg) cartUpdateError,
  }) {
    return cartError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(BaseResultModel result)? cartLoaded,
    TResult? Function(String errorMsg)? cartError,
    TResult? Function(String emptyMsg)? cartEmpty,
    TResult? Function(String successMsg)? cartUpdated,
    TResult? Function(String errorMsg)? cartUpdateError,
  }) {
    return cartError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(BaseResultModel result)? cartLoaded,
    TResult Function(String errorMsg)? cartError,
    TResult Function(String emptyMsg)? cartEmpty,
    TResult Function(String successMsg)? cartUpdated,
    TResult Function(String errorMsg)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartError != null) {
      return cartError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(CartError value) cartError,
    required TResult Function(CartEmpty value) cartEmpty,
    required TResult Function(CartUpdated value) cartUpdated,
    required TResult Function(CartUpdateError value) cartUpdateError,
  }) {
    return cartError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(CartError value)? cartError,
    TResult? Function(CartEmpty value)? cartEmpty,
    TResult? Function(CartUpdated value)? cartUpdated,
    TResult? Function(CartUpdateError value)? cartUpdateError,
  }) {
    return cartError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(CartError value)? cartError,
    TResult Function(CartEmpty value)? cartEmpty,
    TResult Function(CartUpdated value)? cartUpdated,
    TResult Function(CartUpdateError value)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartError != null) {
      return cartError(this);
    }
    return orElse();
  }
}

abstract class CartError implements CartState {
  const factory CartError(final String errorMsg) = _$CartError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$CartErrorCopyWith<_$CartError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEmptyCopyWith<$Res> {
  factory _$$CartEmptyCopyWith(
          _$CartEmpty value, $Res Function(_$CartEmpty) then) =
      __$$CartEmptyCopyWithImpl<$Res>;
  @useResult
  $Res call({String emptyMsg});
}

/// @nodoc
class __$$CartEmptyCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartEmpty>
    implements _$$CartEmptyCopyWith<$Res> {
  __$$CartEmptyCopyWithImpl(
      _$CartEmpty _value, $Res Function(_$CartEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emptyMsg = null,
  }) {
    return _then(_$CartEmpty(
      null == emptyMsg
          ? _value.emptyMsg
          : emptyMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartEmpty implements CartEmpty {
  const _$CartEmpty(this.emptyMsg);

  @override
  final String emptyMsg;

  @override
  String toString() {
    return 'CartState.cartEmpty(emptyMsg: $emptyMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEmpty &&
            (identical(other.emptyMsg, emptyMsg) ||
                other.emptyMsg == emptyMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emptyMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEmptyCopyWith<_$CartEmpty> get copyWith =>
      __$$CartEmptyCopyWithImpl<_$CartEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(BaseResultModel result) cartLoaded,
    required TResult Function(String errorMsg) cartError,
    required TResult Function(String emptyMsg) cartEmpty,
    required TResult Function(String successMsg) cartUpdated,
    required TResult Function(String errorMsg) cartUpdateError,
  }) {
    return cartEmpty(emptyMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(BaseResultModel result)? cartLoaded,
    TResult? Function(String errorMsg)? cartError,
    TResult? Function(String emptyMsg)? cartEmpty,
    TResult? Function(String successMsg)? cartUpdated,
    TResult? Function(String errorMsg)? cartUpdateError,
  }) {
    return cartEmpty?.call(emptyMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(BaseResultModel result)? cartLoaded,
    TResult Function(String errorMsg)? cartError,
    TResult Function(String emptyMsg)? cartEmpty,
    TResult Function(String successMsg)? cartUpdated,
    TResult Function(String errorMsg)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartEmpty != null) {
      return cartEmpty(emptyMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(CartError value) cartError,
    required TResult Function(CartEmpty value) cartEmpty,
    required TResult Function(CartUpdated value) cartUpdated,
    required TResult Function(CartUpdateError value) cartUpdateError,
  }) {
    return cartEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(CartError value)? cartError,
    TResult? Function(CartEmpty value)? cartEmpty,
    TResult? Function(CartUpdated value)? cartUpdated,
    TResult? Function(CartUpdateError value)? cartUpdateError,
  }) {
    return cartEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(CartError value)? cartError,
    TResult Function(CartEmpty value)? cartEmpty,
    TResult Function(CartUpdated value)? cartUpdated,
    TResult Function(CartUpdateError value)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartEmpty != null) {
      return cartEmpty(this);
    }
    return orElse();
  }
}

abstract class CartEmpty implements CartState {
  const factory CartEmpty(final String emptyMsg) = _$CartEmpty;

  String get emptyMsg;
  @JsonKey(ignore: true)
  _$$CartEmptyCopyWith<_$CartEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartUpdatedCopyWith<$Res> {
  factory _$$CartUpdatedCopyWith(
          _$CartUpdated value, $Res Function(_$CartUpdated) then) =
      __$$CartUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMsg});
}

/// @nodoc
class __$$CartUpdatedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartUpdated>
    implements _$$CartUpdatedCopyWith<$Res> {
  __$$CartUpdatedCopyWithImpl(
      _$CartUpdated _value, $Res Function(_$CartUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMsg = null,
  }) {
    return _then(_$CartUpdated(
      null == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartUpdated implements CartUpdated {
  const _$CartUpdated(this.successMsg);

  @override
  final String successMsg;

  @override
  String toString() {
    return 'CartState.cartUpdated(successMsg: $successMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartUpdated &&
            (identical(other.successMsg, successMsg) ||
                other.successMsg == successMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartUpdatedCopyWith<_$CartUpdated> get copyWith =>
      __$$CartUpdatedCopyWithImpl<_$CartUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(BaseResultModel result) cartLoaded,
    required TResult Function(String errorMsg) cartError,
    required TResult Function(String emptyMsg) cartEmpty,
    required TResult Function(String successMsg) cartUpdated,
    required TResult Function(String errorMsg) cartUpdateError,
  }) {
    return cartUpdated(successMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(BaseResultModel result)? cartLoaded,
    TResult? Function(String errorMsg)? cartError,
    TResult? Function(String emptyMsg)? cartEmpty,
    TResult? Function(String successMsg)? cartUpdated,
    TResult? Function(String errorMsg)? cartUpdateError,
  }) {
    return cartUpdated?.call(successMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(BaseResultModel result)? cartLoaded,
    TResult Function(String errorMsg)? cartError,
    TResult Function(String emptyMsg)? cartEmpty,
    TResult Function(String successMsg)? cartUpdated,
    TResult Function(String errorMsg)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(successMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(CartError value) cartError,
    required TResult Function(CartEmpty value) cartEmpty,
    required TResult Function(CartUpdated value) cartUpdated,
    required TResult Function(CartUpdateError value) cartUpdateError,
  }) {
    return cartUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(CartError value)? cartError,
    TResult? Function(CartEmpty value)? cartEmpty,
    TResult? Function(CartUpdated value)? cartUpdated,
    TResult? Function(CartUpdateError value)? cartUpdateError,
  }) {
    return cartUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(CartError value)? cartError,
    TResult Function(CartEmpty value)? cartEmpty,
    TResult Function(CartUpdated value)? cartUpdated,
    TResult Function(CartUpdateError value)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(this);
    }
    return orElse();
  }
}

abstract class CartUpdated implements CartState {
  const factory CartUpdated(final String successMsg) = _$CartUpdated;

  String get successMsg;
  @JsonKey(ignore: true)
  _$$CartUpdatedCopyWith<_$CartUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartUpdateErrorCopyWith<$Res> {
  factory _$$CartUpdateErrorCopyWith(
          _$CartUpdateError value, $Res Function(_$CartUpdateError) then) =
      __$$CartUpdateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$CartUpdateErrorCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartUpdateError>
    implements _$$CartUpdateErrorCopyWith<$Res> {
  __$$CartUpdateErrorCopyWithImpl(
      _$CartUpdateError _value, $Res Function(_$CartUpdateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$CartUpdateError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartUpdateError implements CartUpdateError {
  const _$CartUpdateError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'CartState.cartUpdateError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartUpdateError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartUpdateErrorCopyWith<_$CartUpdateError> get copyWith =>
      __$$CartUpdateErrorCopyWithImpl<_$CartUpdateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(BaseResultModel result) cartLoaded,
    required TResult Function(String errorMsg) cartError,
    required TResult Function(String emptyMsg) cartEmpty,
    required TResult Function(String successMsg) cartUpdated,
    required TResult Function(String errorMsg) cartUpdateError,
  }) {
    return cartUpdateError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(BaseResultModel result)? cartLoaded,
    TResult? Function(String errorMsg)? cartError,
    TResult? Function(String emptyMsg)? cartEmpty,
    TResult? Function(String successMsg)? cartUpdated,
    TResult? Function(String errorMsg)? cartUpdateError,
  }) {
    return cartUpdateError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(BaseResultModel result)? cartLoaded,
    TResult Function(String errorMsg)? cartError,
    TResult Function(String emptyMsg)? cartEmpty,
    TResult Function(String successMsg)? cartUpdated,
    TResult Function(String errorMsg)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartUpdateError != null) {
      return cartUpdateError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartLoaded value) cartLoaded,
    required TResult Function(CartError value) cartError,
    required TResult Function(CartEmpty value) cartEmpty,
    required TResult Function(CartUpdated value) cartUpdated,
    required TResult Function(CartUpdateError value) cartUpdateError,
  }) {
    return cartUpdateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartLoaded value)? cartLoaded,
    TResult? Function(CartError value)? cartError,
    TResult? Function(CartEmpty value)? cartEmpty,
    TResult? Function(CartUpdated value)? cartUpdated,
    TResult? Function(CartUpdateError value)? cartUpdateError,
  }) {
    return cartUpdateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartLoaded value)? cartLoaded,
    TResult Function(CartError value)? cartError,
    TResult Function(CartEmpty value)? cartEmpty,
    TResult Function(CartUpdated value)? cartUpdated,
    TResult Function(CartUpdateError value)? cartUpdateError,
    required TResult orElse(),
  }) {
    if (cartUpdateError != null) {
      return cartUpdateError(this);
    }
    return orElse();
  }
}

abstract class CartUpdateError implements CartState {
  const factory CartUpdateError(final String errorMsg) = _$CartUpdateError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$CartUpdateErrorCopyWith<_$CartUpdateError> get copyWith =>
      throw _privateConstructorUsedError;
}
