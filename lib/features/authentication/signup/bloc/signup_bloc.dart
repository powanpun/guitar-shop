import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/data_layer/local_data/shared_prefs.dart';
import 'package:guitar_shop/data_layer/model/result/result_model.dart';
import 'package:guitar_shop/data_layer/repository/auth_repository/auth_repository.dart';
import 'package:guitar_shop/features/authentication/signup/entities/sign_up_entities.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepository _authRepository;
  SignupBloc(this._authRepository) : super(const Initial()) {
    on<SignUpButtonClicked>(_handleSignUp);
  }

  _handleSignUp(SignUpButtonClicked event, Emitter<SignupState> emit) async {
    emit(const SignupState.signupRequest());
    try {
      Result result = await _authRepository.signUpRequest(event.signUpEntities);

      if (result.error != null) {
        emit(SignupState.signupFailure(result.error!.data!.message!));
      } else {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        UserPreferences appPreferences =
            UserPreferences(sharedPreferences: sharedPreferences);
        await appPreferences.setUserProfile("pow", "powsasd");
        emit(const SignupState.signupSuccess());
      }
    } catch (e) {
      emit(SignupState.signupFailure(e.toString()));
    }
  }
}
