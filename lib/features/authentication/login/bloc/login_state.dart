part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loginRequest() = LoginRequest;
  const factory LoginState.loginSuccess() = LoginSuccess;
  const factory LoginState.loginFailure(String errorMsg) = LoginFailure;
}
