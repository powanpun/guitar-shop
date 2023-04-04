// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckoutEvent {
  String get paymentMode => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentMode, String token) startCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentMode, String token)? startCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentMode, String token)? startCheckout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCheckout value) startCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCheckout value)? startCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCheckout value)? startCheckout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckoutEventCopyWith<CheckoutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
  @useResult
  $Res call({String paymentMode, String token});
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMode = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartCheckoutCopyWith<$Res>
    implements $CheckoutEventCopyWith<$Res> {
  factory _$$StartCheckoutCopyWith(
          _$StartCheckout value, $Res Function(_$StartCheckout) then) =
      __$$StartCheckoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String paymentMode, String token});
}

/// @nodoc
class __$$StartCheckoutCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$StartCheckout>
    implements _$$StartCheckoutCopyWith<$Res> {
  __$$StartCheckoutCopyWithImpl(
      _$StartCheckout _value, $Res Function(_$StartCheckout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMode = null,
    Object? token = null,
  }) {
    return _then(_$StartCheckout(
      null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartCheckout implements StartCheckout {
  const _$StartCheckout(this.paymentMode, this.token);

  @override
  final String paymentMode;
  @override
  final String token;

  @override
  String toString() {
    return 'CheckoutEvent.startCheckout(paymentMode: $paymentMode, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartCheckout &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMode, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartCheckoutCopyWith<_$StartCheckout> get copyWith =>
      __$$StartCheckoutCopyWithImpl<_$StartCheckout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentMode, String token) startCheckout,
  }) {
    return startCheckout(paymentMode, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentMode, String token)? startCheckout,
  }) {
    return startCheckout?.call(paymentMode, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentMode, String token)? startCheckout,
    required TResult orElse(),
  }) {
    if (startCheckout != null) {
      return startCheckout(paymentMode, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCheckout value) startCheckout,
  }) {
    return startCheckout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCheckout value)? startCheckout,
  }) {
    return startCheckout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCheckout value)? startCheckout,
    required TResult orElse(),
  }) {
    if (startCheckout != null) {
      return startCheckout(this);
    }
    return orElse();
  }
}

abstract class StartCheckout implements CheckoutEvent {
  const factory StartCheckout(final String paymentMode, final String token) =
      _$StartCheckout;

  @override
  String get paymentMode;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$StartCheckoutCopyWith<_$StartCheckout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkoutProcessing,
    required TResult Function(String msg) checkoutComplete,
    required TResult Function(String errorMsg) checkoutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkoutProcessing,
    TResult? Function(String msg)? checkoutComplete,
    TResult? Function(String errorMsg)? checkoutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkoutProcessing,
    TResult Function(String msg)? checkoutComplete,
    TResult Function(String errorMsg)? checkoutError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CheckoutProcessing value) checkoutProcessing,
    required TResult Function(CheckoutComplete value) checkoutComplete,
    required TResult Function(CheckoutError value) checkoutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CheckoutProcessing value)? checkoutProcessing,
    TResult? Function(CheckoutComplete value)? checkoutComplete,
    TResult? Function(CheckoutError value)? checkoutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CheckoutProcessing value)? checkoutProcessing,
    TResult Function(CheckoutComplete value)? checkoutComplete,
    TResult Function(CheckoutError value)? checkoutError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

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
    extends _$CheckoutStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CheckoutState.initial()';
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
    required TResult Function() checkoutProcessing,
    required TResult Function(String msg) checkoutComplete,
    required TResult Function(String errorMsg) checkoutError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkoutProcessing,
    TResult? Function(String msg)? checkoutComplete,
    TResult? Function(String errorMsg)? checkoutError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkoutProcessing,
    TResult Function(String msg)? checkoutComplete,
    TResult Function(String errorMsg)? checkoutError,
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
    required TResult Function(CheckoutProcessing value) checkoutProcessing,
    required TResult Function(CheckoutComplete value) checkoutComplete,
    required TResult Function(CheckoutError value) checkoutError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CheckoutProcessing value)? checkoutProcessing,
    TResult? Function(CheckoutComplete value)? checkoutComplete,
    TResult? Function(CheckoutError value)? checkoutError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CheckoutProcessing value)? checkoutProcessing,
    TResult Function(CheckoutComplete value)? checkoutComplete,
    TResult Function(CheckoutError value)? checkoutError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CheckoutState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CheckoutProcessingCopyWith<$Res> {
  factory _$$CheckoutProcessingCopyWith(_$CheckoutProcessing value,
          $Res Function(_$CheckoutProcessing) then) =
      __$$CheckoutProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutProcessingCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutProcessing>
    implements _$$CheckoutProcessingCopyWith<$Res> {
  __$$CheckoutProcessingCopyWithImpl(
      _$CheckoutProcessing _value, $Res Function(_$CheckoutProcessing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutProcessing implements CheckoutProcessing {
  const _$CheckoutProcessing();

  @override
  String toString() {
    return 'CheckoutState.checkoutProcessing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkoutProcessing,
    required TResult Function(String msg) checkoutComplete,
    required TResult Function(String errorMsg) checkoutError,
  }) {
    return checkoutProcessing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkoutProcessing,
    TResult? Function(String msg)? checkoutComplete,
    TResult? Function(String errorMsg)? checkoutError,
  }) {
    return checkoutProcessing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkoutProcessing,
    TResult Function(String msg)? checkoutComplete,
    TResult Function(String errorMsg)? checkoutError,
    required TResult orElse(),
  }) {
    if (checkoutProcessing != null) {
      return checkoutProcessing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CheckoutProcessing value) checkoutProcessing,
    required TResult Function(CheckoutComplete value) checkoutComplete,
    required TResult Function(CheckoutError value) checkoutError,
  }) {
    return checkoutProcessing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CheckoutProcessing value)? checkoutProcessing,
    TResult? Function(CheckoutComplete value)? checkoutComplete,
    TResult? Function(CheckoutError value)? checkoutError,
  }) {
    return checkoutProcessing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CheckoutProcessing value)? checkoutProcessing,
    TResult Function(CheckoutComplete value)? checkoutComplete,
    TResult Function(CheckoutError value)? checkoutError,
    required TResult orElse(),
  }) {
    if (checkoutProcessing != null) {
      return checkoutProcessing(this);
    }
    return orElse();
  }
}

abstract class CheckoutProcessing implements CheckoutState {
  const factory CheckoutProcessing() = _$CheckoutProcessing;
}

/// @nodoc
abstract class _$$CheckoutCompleteCopyWith<$Res> {
  factory _$$CheckoutCompleteCopyWith(
          _$CheckoutComplete value, $Res Function(_$CheckoutComplete) then) =
      __$$CheckoutCompleteCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$CheckoutCompleteCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutComplete>
    implements _$$CheckoutCompleteCopyWith<$Res> {
  __$$CheckoutCompleteCopyWithImpl(
      _$CheckoutComplete _value, $Res Function(_$CheckoutComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$CheckoutComplete(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckoutComplete implements CheckoutComplete {
  const _$CheckoutComplete(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'CheckoutState.checkoutComplete(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutComplete &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutCompleteCopyWith<_$CheckoutComplete> get copyWith =>
      __$$CheckoutCompleteCopyWithImpl<_$CheckoutComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkoutProcessing,
    required TResult Function(String msg) checkoutComplete,
    required TResult Function(String errorMsg) checkoutError,
  }) {
    return checkoutComplete(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkoutProcessing,
    TResult? Function(String msg)? checkoutComplete,
    TResult? Function(String errorMsg)? checkoutError,
  }) {
    return checkoutComplete?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkoutProcessing,
    TResult Function(String msg)? checkoutComplete,
    TResult Function(String errorMsg)? checkoutError,
    required TResult orElse(),
  }) {
    if (checkoutComplete != null) {
      return checkoutComplete(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CheckoutProcessing value) checkoutProcessing,
    required TResult Function(CheckoutComplete value) checkoutComplete,
    required TResult Function(CheckoutError value) checkoutError,
  }) {
    return checkoutComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CheckoutProcessing value)? checkoutProcessing,
    TResult? Function(CheckoutComplete value)? checkoutComplete,
    TResult? Function(CheckoutError value)? checkoutError,
  }) {
    return checkoutComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CheckoutProcessing value)? checkoutProcessing,
    TResult Function(CheckoutComplete value)? checkoutComplete,
    TResult Function(CheckoutError value)? checkoutError,
    required TResult orElse(),
  }) {
    if (checkoutComplete != null) {
      return checkoutComplete(this);
    }
    return orElse();
  }
}

abstract class CheckoutComplete implements CheckoutState {
  const factory CheckoutComplete(final String msg) = _$CheckoutComplete;

  String get msg;
  @JsonKey(ignore: true)
  _$$CheckoutCompleteCopyWith<_$CheckoutComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckoutErrorCopyWith<$Res> {
  factory _$$CheckoutErrorCopyWith(
          _$CheckoutError value, $Res Function(_$CheckoutError) then) =
      __$$CheckoutErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$CheckoutErrorCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutError>
    implements _$$CheckoutErrorCopyWith<$Res> {
  __$$CheckoutErrorCopyWithImpl(
      _$CheckoutError _value, $Res Function(_$CheckoutError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$CheckoutError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckoutError implements CheckoutError {
  const _$CheckoutError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'CheckoutState.checkoutError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutErrorCopyWith<_$CheckoutError> get copyWith =>
      __$$CheckoutErrorCopyWithImpl<_$CheckoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkoutProcessing,
    required TResult Function(String msg) checkoutComplete,
    required TResult Function(String errorMsg) checkoutError,
  }) {
    return checkoutError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkoutProcessing,
    TResult? Function(String msg)? checkoutComplete,
    TResult? Function(String errorMsg)? checkoutError,
  }) {
    return checkoutError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkoutProcessing,
    TResult Function(String msg)? checkoutComplete,
    TResult Function(String errorMsg)? checkoutError,
    required TResult orElse(),
  }) {
    if (checkoutError != null) {
      return checkoutError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CheckoutProcessing value) checkoutProcessing,
    required TResult Function(CheckoutComplete value) checkoutComplete,
    required TResult Function(CheckoutError value) checkoutError,
  }) {
    return checkoutError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CheckoutProcessing value)? checkoutProcessing,
    TResult? Function(CheckoutComplete value)? checkoutComplete,
    TResult? Function(CheckoutError value)? checkoutError,
  }) {
    return checkoutError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CheckoutProcessing value)? checkoutProcessing,
    TResult Function(CheckoutComplete value)? checkoutComplete,
    TResult Function(CheckoutError value)? checkoutError,
    required TResult orElse(),
  }) {
    if (checkoutError != null) {
      return checkoutError(this);
    }
    return orElse();
  }
}

abstract class CheckoutError implements CheckoutState {
  const factory CheckoutError(final String errorMsg) = _$CheckoutError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$CheckoutErrorCopyWith<_$CheckoutError> get copyWith =>
      throw _privateConstructorUsedError;
}
