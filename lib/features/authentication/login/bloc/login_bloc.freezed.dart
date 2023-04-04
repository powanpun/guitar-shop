// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  LoginRequestEntity get loginRequestEntity =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestEntity loginRequestEntity)
        loginButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestEntity loginRequestEntity)?
        loginButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestEntity loginRequestEntity)? loginButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginButtonClicked value) loginButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginButtonClicked value)? loginButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginButtonClicked value)? loginButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({LoginRequestEntity loginRequestEntity});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequestEntity = null,
  }) {
    return _then(_value.copyWith(
      loginRequestEntity: null == loginRequestEntity
          ? _value.loginRequestEntity
          : loginRequestEntity // ignore: cast_nullable_to_non_nullable
              as LoginRequestEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginButtonClickedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$LoginButtonClickedCopyWith(_$LoginButtonClicked value,
          $Res Function(_$LoginButtonClicked) then) =
      __$$LoginButtonClickedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginRequestEntity loginRequestEntity});
}

/// @nodoc
class __$$LoginButtonClickedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginButtonClicked>
    implements _$$LoginButtonClickedCopyWith<$Res> {
  __$$LoginButtonClickedCopyWithImpl(
      _$LoginButtonClicked _value, $Res Function(_$LoginButtonClicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequestEntity = null,
  }) {
    return _then(_$LoginButtonClicked(
      null == loginRequestEntity
          ? _value.loginRequestEntity
          : loginRequestEntity // ignore: cast_nullable_to_non_nullable
              as LoginRequestEntity,
    ));
  }
}

/// @nodoc

class _$LoginButtonClicked implements LoginButtonClicked {
  const _$LoginButtonClicked(this.loginRequestEntity);

  @override
  final LoginRequestEntity loginRequestEntity;

  @override
  String toString() {
    return 'LoginEvent.loginButtonClicked(loginRequestEntity: $loginRequestEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonClicked &&
            (identical(other.loginRequestEntity, loginRequestEntity) ||
                other.loginRequestEntity == loginRequestEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginRequestEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginButtonClickedCopyWith<_$LoginButtonClicked> get copyWith =>
      __$$LoginButtonClickedCopyWithImpl<_$LoginButtonClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestEntity loginRequestEntity)
        loginButtonClicked,
  }) {
    return loginButtonClicked(loginRequestEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestEntity loginRequestEntity)?
        loginButtonClicked,
  }) {
    return loginButtonClicked?.call(loginRequestEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestEntity loginRequestEntity)? loginButtonClicked,
    required TResult orElse(),
  }) {
    if (loginButtonClicked != null) {
      return loginButtonClicked(loginRequestEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginButtonClicked value) loginButtonClicked,
  }) {
    return loginButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginButtonClicked value)? loginButtonClicked,
  }) {
    return loginButtonClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginButtonClicked value)? loginButtonClicked,
    required TResult orElse(),
  }) {
    if (loginButtonClicked != null) {
      return loginButtonClicked(this);
    }
    return orElse();
  }
}

abstract class LoginButtonClicked implements LoginEvent {
  const factory LoginButtonClicked(
      final LoginRequestEntity loginRequestEntity) = _$LoginButtonClicked;

  @override
  LoginRequestEntity get loginRequestEntity;
  @override
  @JsonKey(ignore: true)
  _$$LoginButtonClickedCopyWith<_$LoginButtonClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginRequest,
    required TResult Function() loginSuccess,
    required TResult Function(String errorMsg) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginRequest,
    TResult? Function()? loginSuccess,
    TResult? Function(String errorMsg)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginRequest,
    TResult Function()? loginSuccess,
    TResult Function(String errorMsg)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginRequest value) loginRequest,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoginRequest value)? loginRequest,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
    extends _$LoginStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
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
    required TResult Function() loginRequest,
    required TResult Function() loginSuccess,
    required TResult Function(String errorMsg) loginFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginRequest,
    TResult? Function()? loginSuccess,
    TResult? Function(String errorMsg)? loginFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginRequest,
    TResult Function()? loginSuccess,
    TResult Function(String errorMsg)? loginFailure,
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
    required TResult Function(LoginRequest value) loginRequest,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoginRequest value)? loginRequest,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestCopyWith(
          _$LoginRequest value, $Res Function(_$LoginRequest) then) =
      __$$LoginRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginRequestCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginRequest>
    implements _$$LoginRequestCopyWith<$Res> {
  __$$LoginRequestCopyWithImpl(
      _$LoginRequest _value, $Res Function(_$LoginRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginRequest implements LoginRequest {
  const _$LoginRequest();

  @override
  String toString() {
    return 'LoginState.loginRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginRequest,
    required TResult Function() loginSuccess,
    required TResult Function(String errorMsg) loginFailure,
  }) {
    return loginRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginRequest,
    TResult? Function()? loginSuccess,
    TResult? Function(String errorMsg)? loginFailure,
  }) {
    return loginRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginRequest,
    TResult Function()? loginSuccess,
    TResult Function(String errorMsg)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginRequest != null) {
      return loginRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginRequest value) loginRequest,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
  }) {
    return loginRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoginRequest value)? loginRequest,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
  }) {
    return loginRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginRequest != null) {
      return loginRequest(this);
    }
    return orElse();
  }
}

abstract class LoginRequest implements LoginState {
  const factory LoginRequest() = _$LoginRequest;
}

/// @nodoc
abstract class _$$LoginSuccessCopyWith<$Res> {
  factory _$$LoginSuccessCopyWith(
          _$LoginSuccess value, $Res Function(_$LoginSuccess) then) =
      __$$LoginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccess>
    implements _$$LoginSuccessCopyWith<$Res> {
  __$$LoginSuccessCopyWithImpl(
      _$LoginSuccess _value, $Res Function(_$LoginSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSuccess implements LoginSuccess {
  const _$LoginSuccess();

  @override
  String toString() {
    return 'LoginState.loginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginRequest,
    required TResult Function() loginSuccess,
    required TResult Function(String errorMsg) loginFailure,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginRequest,
    TResult? Function()? loginSuccess,
    TResult? Function(String errorMsg)? loginFailure,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginRequest,
    TResult Function()? loginSuccess,
    TResult Function(String errorMsg)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginRequest value) loginRequest,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoginRequest value)? loginRequest,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements LoginState {
  const factory LoginSuccess() = _$LoginSuccess;
}

/// @nodoc
abstract class _$$LoginFailureCopyWith<$Res> {
  factory _$$LoginFailureCopyWith(
          _$LoginFailure value, $Res Function(_$LoginFailure) then) =
      __$$LoginFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$LoginFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginFailure>
    implements _$$LoginFailureCopyWith<$Res> {
  __$$LoginFailureCopyWithImpl(
      _$LoginFailure _value, $Res Function(_$LoginFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$LoginFailure(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailure implements LoginFailure {
  const _$LoginFailure(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'LoginState.loginFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailure &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      __$$LoginFailureCopyWithImpl<_$LoginFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginRequest,
    required TResult Function() loginSuccess,
    required TResult Function(String errorMsg) loginFailure,
  }) {
    return loginFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginRequest,
    TResult? Function()? loginSuccess,
    TResult? Function(String errorMsg)? loginFailure,
  }) {
    return loginFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginRequest,
    TResult Function()? loginSuccess,
    TResult Function(String errorMsg)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginRequest value) loginRequest,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginFailure value) loginFailure,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoginRequest value)? loginRequest,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginFailure value)? loginFailure,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginRequest value)? loginRequest,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class LoginFailure implements LoginState {
  const factory LoginFailure(final String errorMsg) = _$LoginFailure;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
