// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  SignUpEntities get signUpEntities => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpEntities signUpEntities)
        signUpButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpEntities signUpEntities)? signUpButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpEntities signUpEntities)? signUpButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpButtonClicked value) signUpButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpButtonClicked value)? signUpButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpButtonClicked value)? signUpButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupEventCopyWith<SignupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
  @useResult
  $Res call({SignUpEntities signUpEntities});
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpEntities = null,
  }) {
    return _then(_value.copyWith(
      signUpEntities: null == signUpEntities
          ? _value.signUpEntities
          : signUpEntities // ignore: cast_nullable_to_non_nullable
              as SignUpEntities,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpButtonClickedCopyWith<$Res>
    implements $SignupEventCopyWith<$Res> {
  factory _$$SignUpButtonClickedCopyWith(_$SignUpButtonClicked value,
          $Res Function(_$SignUpButtonClicked) then) =
      __$$SignUpButtonClickedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpEntities signUpEntities});
}

/// @nodoc
class __$$SignUpButtonClickedCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$SignUpButtonClicked>
    implements _$$SignUpButtonClickedCopyWith<$Res> {
  __$$SignUpButtonClickedCopyWithImpl(
      _$SignUpButtonClicked _value, $Res Function(_$SignUpButtonClicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpEntities = null,
  }) {
    return _then(_$SignUpButtonClicked(
      null == signUpEntities
          ? _value.signUpEntities
          : signUpEntities // ignore: cast_nullable_to_non_nullable
              as SignUpEntities,
    ));
  }
}

/// @nodoc

class _$SignUpButtonClicked implements SignUpButtonClicked {
  const _$SignUpButtonClicked(this.signUpEntities);

  @override
  final SignUpEntities signUpEntities;

  @override
  String toString() {
    return 'SignupEvent.signUpButtonClicked(signUpEntities: $signUpEntities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpButtonClicked &&
            (identical(other.signUpEntities, signUpEntities) ||
                other.signUpEntities == signUpEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpButtonClickedCopyWith<_$SignUpButtonClicked> get copyWith =>
      __$$SignUpButtonClickedCopyWithImpl<_$SignUpButtonClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpEntities signUpEntities)
        signUpButtonClicked,
  }) {
    return signUpButtonClicked(signUpEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpEntities signUpEntities)? signUpButtonClicked,
  }) {
    return signUpButtonClicked?.call(signUpEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpEntities signUpEntities)? signUpButtonClicked,
    required TResult orElse(),
  }) {
    if (signUpButtonClicked != null) {
      return signUpButtonClicked(signUpEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpButtonClicked value) signUpButtonClicked,
  }) {
    return signUpButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpButtonClicked value)? signUpButtonClicked,
  }) {
    return signUpButtonClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpButtonClicked value)? signUpButtonClicked,
    required TResult orElse(),
  }) {
    if (signUpButtonClicked != null) {
      return signUpButtonClicked(this);
    }
    return orElse();
  }
}

abstract class SignUpButtonClicked implements SignupEvent {
  const factory SignUpButtonClicked(final SignUpEntities signUpEntities) =
      _$SignUpButtonClicked;

  @override
  SignUpEntities get signUpEntities;
  @override
  @JsonKey(ignore: true)
  _$$SignUpButtonClickedCopyWith<_$SignUpButtonClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupRequest,
    required TResult Function() signupSuccess,
    required TResult Function(String errorMsg) signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupRequest,
    TResult? Function()? signupSuccess,
    TResult? Function(String errorMsg)? signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupRequest,
    TResult Function()? signupSuccess,
    TResult Function(String errorMsg)? signupFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SignupRequest value) signupRequest,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupFailure value) signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SignupRequest value)? signupRequest,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupFailure value)? signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SignupRequest value)? signupRequest,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

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
    extends _$SignupStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SignupState.initial()';
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
    required TResult Function() signupRequest,
    required TResult Function() signupSuccess,
    required TResult Function(String errorMsg) signupFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupRequest,
    TResult? Function()? signupSuccess,
    TResult? Function(String errorMsg)? signupFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupRequest,
    TResult Function()? signupSuccess,
    TResult Function(String errorMsg)? signupFailure,
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
    required TResult Function(SignupRequest value) signupRequest,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupFailure value) signupFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SignupRequest value)? signupRequest,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupFailure value)? signupFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SignupRequest value)? signupRequest,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SignupState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$SignupRequestCopyWith<$Res> {
  factory _$$SignupRequestCopyWith(
          _$SignupRequest value, $Res Function(_$SignupRequest) then) =
      __$$SignupRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupRequestCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupRequest>
    implements _$$SignupRequestCopyWith<$Res> {
  __$$SignupRequestCopyWithImpl(
      _$SignupRequest _value, $Res Function(_$SignupRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignupRequest implements SignupRequest {
  const _$SignupRequest();

  @override
  String toString() {
    return 'SignupState.signupRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupRequest,
    required TResult Function() signupSuccess,
    required TResult Function(String errorMsg) signupFailure,
  }) {
    return signupRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupRequest,
    TResult? Function()? signupSuccess,
    TResult? Function(String errorMsg)? signupFailure,
  }) {
    return signupRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupRequest,
    TResult Function()? signupSuccess,
    TResult Function(String errorMsg)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupRequest != null) {
      return signupRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SignupRequest value) signupRequest,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupFailure value) signupFailure,
  }) {
    return signupRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SignupRequest value)? signupRequest,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupFailure value)? signupFailure,
  }) {
    return signupRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SignupRequest value)? signupRequest,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupRequest != null) {
      return signupRequest(this);
    }
    return orElse();
  }
}

abstract class SignupRequest implements SignupState {
  const factory SignupRequest() = _$SignupRequest;
}

/// @nodoc
abstract class _$$SignupSuccessCopyWith<$Res> {
  factory _$$SignupSuccessCopyWith(
          _$SignupSuccess value, $Res Function(_$SignupSuccess) then) =
      __$$SignupSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupSuccessCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupSuccess>
    implements _$$SignupSuccessCopyWith<$Res> {
  __$$SignupSuccessCopyWithImpl(
      _$SignupSuccess _value, $Res Function(_$SignupSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignupSuccess implements SignupSuccess {
  const _$SignupSuccess();

  @override
  String toString() {
    return 'SignupState.signupSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupRequest,
    required TResult Function() signupSuccess,
    required TResult Function(String errorMsg) signupFailure,
  }) {
    return signupSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupRequest,
    TResult? Function()? signupSuccess,
    TResult? Function(String errorMsg)? signupFailure,
  }) {
    return signupSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupRequest,
    TResult Function()? signupSuccess,
    TResult Function(String errorMsg)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SignupRequest value) signupRequest,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupFailure value) signupFailure,
  }) {
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SignupRequest value)? signupRequest,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupFailure value)? signupFailure,
  }) {
    return signupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SignupRequest value)? signupRequest,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class SignupSuccess implements SignupState {
  const factory SignupSuccess() = _$SignupSuccess;
}

/// @nodoc
abstract class _$$SignupFailureCopyWith<$Res> {
  factory _$$SignupFailureCopyWith(
          _$SignupFailure value, $Res Function(_$SignupFailure) then) =
      __$$SignupFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$SignupFailureCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupFailure>
    implements _$$SignupFailureCopyWith<$Res> {
  __$$SignupFailureCopyWithImpl(
      _$SignupFailure _value, $Res Function(_$SignupFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$SignupFailure(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupFailure implements SignupFailure {
  const _$SignupFailure(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'SignupState.signupFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFailure &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFailureCopyWith<_$SignupFailure> get copyWith =>
      __$$SignupFailureCopyWithImpl<_$SignupFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupRequest,
    required TResult Function() signupSuccess,
    required TResult Function(String errorMsg) signupFailure,
  }) {
    return signupFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupRequest,
    TResult? Function()? signupSuccess,
    TResult? Function(String errorMsg)? signupFailure,
  }) {
    return signupFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupRequest,
    TResult Function()? signupSuccess,
    TResult Function(String errorMsg)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupFailure != null) {
      return signupFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SignupRequest value) signupRequest,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignupFailure value) signupFailure,
  }) {
    return signupFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SignupRequest value)? signupRequest,
    TResult? Function(SignupSuccess value)? signupSuccess,
    TResult? Function(SignupFailure value)? signupFailure,
  }) {
    return signupFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SignupRequest value)? signupRequest,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupFailure != null) {
      return signupFailure(this);
    }
    return orElse();
  }
}

abstract class SignupFailure implements SignupState {
  const factory SignupFailure(final String errorMsg) = _$SignupFailure;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$SignupFailureCopyWith<_$SignupFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
