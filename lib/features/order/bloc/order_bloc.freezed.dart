// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function() getNextOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function()? getNextOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function()? getNextOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllOrders value) getAllOrders,
    required TResult Function(GetNextOrders value) getNextOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllOrders value)? getAllOrders,
    TResult? Function(GetNextOrders value)? getNextOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllOrders value)? getAllOrders,
    TResult Function(GetNextOrders value)? getNextOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllOrdersCopyWith<$Res> {
  factory _$$GetAllOrdersCopyWith(
          _$GetAllOrders value, $Res Function(_$GetAllOrders) then) =
      __$$GetAllOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllOrdersCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetAllOrders>
    implements _$$GetAllOrdersCopyWith<$Res> {
  __$$GetAllOrdersCopyWithImpl(
      _$GetAllOrders _value, $Res Function(_$GetAllOrders) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllOrders implements GetAllOrders {
  const _$GetAllOrders();

  @override
  String toString() {
    return 'OrderEvent.getAllOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function() getNextOrders,
  }) {
    return getAllOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function()? getNextOrders,
  }) {
    return getAllOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function()? getNextOrders,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllOrders value) getAllOrders,
    required TResult Function(GetNextOrders value) getNextOrders,
  }) {
    return getAllOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllOrders value)? getAllOrders,
    TResult? Function(GetNextOrders value)? getNextOrders,
  }) {
    return getAllOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllOrders value)? getAllOrders,
    TResult Function(GetNextOrders value)? getNextOrders,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders(this);
    }
    return orElse();
  }
}

abstract class GetAllOrders implements OrderEvent {
  const factory GetAllOrders() = _$GetAllOrders;
}

/// @nodoc
abstract class _$$GetNextOrdersCopyWith<$Res> {
  factory _$$GetNextOrdersCopyWith(
          _$GetNextOrders value, $Res Function(_$GetNextOrders) then) =
      __$$GetNextOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNextOrdersCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetNextOrders>
    implements _$$GetNextOrdersCopyWith<$Res> {
  __$$GetNextOrdersCopyWithImpl(
      _$GetNextOrders _value, $Res Function(_$GetNextOrders) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNextOrders implements GetNextOrders {
  const _$GetNextOrders();

  @override
  String toString() {
    return 'OrderEvent.getNextOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNextOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function() getNextOrders,
  }) {
    return getNextOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function()? getNextOrders,
  }) {
    return getNextOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function()? getNextOrders,
    required TResult orElse(),
  }) {
    if (getNextOrders != null) {
      return getNextOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllOrders value) getAllOrders,
    required TResult Function(GetNextOrders value) getNextOrders,
  }) {
    return getNextOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllOrders value)? getAllOrders,
    TResult? Function(GetNextOrders value)? getNextOrders,
  }) {
    return getNextOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllOrders value)? getAllOrders,
    TResult Function(GetNextOrders value)? getNextOrders,
    required TResult orElse(),
  }) {
    if (getNextOrders != null) {
      return getNextOrders(this);
    }
    return orElse();
  }
}

abstract class GetNextOrders implements OrderEvent {
  const factory GetNextOrders() = _$GetNextOrders;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function(List<OrderModel> orderModel) orderLoaded,
    required TResult Function(String errorMsg) orderLoadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(List<OrderModel> orderModel)? orderLoaded,
    TResult? Function(String errorMsg)? orderLoadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(List<OrderModel> orderModel)? orderLoaded,
    TResult Function(String errorMsg)? orderLoadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderLoaded value) orderLoaded,
    required TResult Function(OrderLoadError value) orderLoadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderLoaded value)? orderLoaded,
    TResult? Function(OrderLoadError value)? orderLoadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderLoaded value)? orderLoaded,
    TResult Function(OrderLoadError value)? orderLoadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'OrderState.initial()';
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
    required TResult Function() orderLoading,
    required TResult Function(List<OrderModel> orderModel) orderLoaded,
    required TResult Function(String errorMsg) orderLoadError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(List<OrderModel> orderModel)? orderLoaded,
    TResult? Function(String errorMsg)? orderLoadError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(List<OrderModel> orderModel)? orderLoaded,
    TResult Function(String errorMsg)? orderLoadError,
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
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderLoaded value) orderLoaded,
    required TResult Function(OrderLoadError value) orderLoadError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderLoaded value)? orderLoaded,
    TResult? Function(OrderLoadError value)? orderLoadError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderLoaded value)? orderLoaded,
    TResult Function(OrderLoadError value)? orderLoadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OrderState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$OrderLoadingCopyWith<$Res> {
  factory _$$OrderLoadingCopyWith(
          _$OrderLoading value, $Res Function(_$OrderLoading) then) =
      __$$OrderLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderLoadingCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderLoading>
    implements _$$OrderLoadingCopyWith<$Res> {
  __$$OrderLoadingCopyWithImpl(
      _$OrderLoading _value, $Res Function(_$OrderLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderLoading implements OrderLoading {
  const _$OrderLoading();

  @override
  String toString() {
    return 'OrderState.orderLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function(List<OrderModel> orderModel) orderLoaded,
    required TResult Function(String errorMsg) orderLoadError,
  }) {
    return orderLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(List<OrderModel> orderModel)? orderLoaded,
    TResult? Function(String errorMsg)? orderLoadError,
  }) {
    return orderLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(List<OrderModel> orderModel)? orderLoaded,
    TResult Function(String errorMsg)? orderLoadError,
    required TResult orElse(),
  }) {
    if (orderLoading != null) {
      return orderLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderLoaded value) orderLoaded,
    required TResult Function(OrderLoadError value) orderLoadError,
  }) {
    return orderLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderLoaded value)? orderLoaded,
    TResult? Function(OrderLoadError value)? orderLoadError,
  }) {
    return orderLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderLoaded value)? orderLoaded,
    TResult Function(OrderLoadError value)? orderLoadError,
    required TResult orElse(),
  }) {
    if (orderLoading != null) {
      return orderLoading(this);
    }
    return orElse();
  }
}

abstract class OrderLoading implements OrderState {
  const factory OrderLoading() = _$OrderLoading;
}

/// @nodoc
abstract class _$$OrderLoadedCopyWith<$Res> {
  factory _$$OrderLoadedCopyWith(
          _$OrderLoaded value, $Res Function(_$OrderLoaded) then) =
      __$$OrderLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderModel> orderModel});
}

/// @nodoc
class __$$OrderLoadedCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderLoaded>
    implements _$$OrderLoadedCopyWith<$Res> {
  __$$OrderLoadedCopyWithImpl(
      _$OrderLoaded _value, $Res Function(_$OrderLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderModel = null,
  }) {
    return _then(_$OrderLoaded(
      null == orderModel
          ? _value._orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$OrderLoaded implements OrderLoaded {
  const _$OrderLoaded(final List<OrderModel> orderModel)
      : _orderModel = orderModel;

  final List<OrderModel> _orderModel;
  @override
  List<OrderModel> get orderModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderModel);
  }

  @override
  String toString() {
    return 'OrderState.orderLoaded(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLoaded &&
            const DeepCollectionEquality()
                .equals(other._orderModel, _orderModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLoadedCopyWith<_$OrderLoaded> get copyWith =>
      __$$OrderLoadedCopyWithImpl<_$OrderLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function(List<OrderModel> orderModel) orderLoaded,
    required TResult Function(String errorMsg) orderLoadError,
  }) {
    return orderLoaded(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(List<OrderModel> orderModel)? orderLoaded,
    TResult? Function(String errorMsg)? orderLoadError,
  }) {
    return orderLoaded?.call(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(List<OrderModel> orderModel)? orderLoaded,
    TResult Function(String errorMsg)? orderLoadError,
    required TResult orElse(),
  }) {
    if (orderLoaded != null) {
      return orderLoaded(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderLoaded value) orderLoaded,
    required TResult Function(OrderLoadError value) orderLoadError,
  }) {
    return orderLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderLoaded value)? orderLoaded,
    TResult? Function(OrderLoadError value)? orderLoadError,
  }) {
    return orderLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderLoaded value)? orderLoaded,
    TResult Function(OrderLoadError value)? orderLoadError,
    required TResult orElse(),
  }) {
    if (orderLoaded != null) {
      return orderLoaded(this);
    }
    return orElse();
  }
}

abstract class OrderLoaded implements OrderState {
  const factory OrderLoaded(final List<OrderModel> orderModel) = _$OrderLoaded;

  List<OrderModel> get orderModel;
  @JsonKey(ignore: true)
  _$$OrderLoadedCopyWith<_$OrderLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderLoadErrorCopyWith<$Res> {
  factory _$$OrderLoadErrorCopyWith(
          _$OrderLoadError value, $Res Function(_$OrderLoadError) then) =
      __$$OrderLoadErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$OrderLoadErrorCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderLoadError>
    implements _$$OrderLoadErrorCopyWith<$Res> {
  __$$OrderLoadErrorCopyWithImpl(
      _$OrderLoadError _value, $Res Function(_$OrderLoadError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$OrderLoadError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderLoadError implements OrderLoadError {
  const _$OrderLoadError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'OrderState.orderLoadError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLoadError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLoadErrorCopyWith<_$OrderLoadError> get copyWith =>
      __$$OrderLoadErrorCopyWithImpl<_$OrderLoadError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function(List<OrderModel> orderModel) orderLoaded,
    required TResult Function(String errorMsg) orderLoadError,
  }) {
    return orderLoadError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(List<OrderModel> orderModel)? orderLoaded,
    TResult? Function(String errorMsg)? orderLoadError,
  }) {
    return orderLoadError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(List<OrderModel> orderModel)? orderLoaded,
    TResult Function(String errorMsg)? orderLoadError,
    required TResult orElse(),
  }) {
    if (orderLoadError != null) {
      return orderLoadError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(OrderLoaded value) orderLoaded,
    required TResult Function(OrderLoadError value) orderLoadError,
  }) {
    return orderLoadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(OrderLoaded value)? orderLoaded,
    TResult? Function(OrderLoadError value)? orderLoadError,
  }) {
    return orderLoadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(OrderLoaded value)? orderLoaded,
    TResult Function(OrderLoadError value)? orderLoadError,
    required TResult orElse(),
  }) {
    if (orderLoadError != null) {
      return orderLoadError(this);
    }
    return orElse();
  }
}

abstract class OrderLoadError implements OrderState {
  const factory OrderLoadError(final String errorMsg) = _$OrderLoadError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$OrderLoadErrorCopyWith<_$OrderLoadError> get copyWith =>
      throw _privateConstructorUsedError;
}
