part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginButtonClicked(
      LoginRequestEntity loginRequestEntity) = LoginButtonClicked;
}
