part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = Initial;
  const factory SignupState.signupRequest() = SignupRequest;
  const factory SignupState.signupSuccess() = SignupSuccess;
  const factory SignupState.signupFailure(String errorMsg) = SignupFailure;
}
