import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/data_layer/local_data/shared_prefs.dart';
import 'package:guitar_shop/data_layer/model/result/result_model.dart';
import 'package:guitar_shop/data_layer/repository/auth_repository/auth_repository.dart';
import 'package:guitar_shop/features/authentication/login/entities/login_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;
  LoginBloc(this._authRepository) : super(const Initial()) {
    on<LoginButtonClicked>(_handleLogin);
  }
  _handleLogin(LoginButtonClicked event, Emitter<LoginState> emit) async {
    emit(const LoginState.loginRequest());

    try {
      Result result =
          await _authRepository.loginRequest(event.loginRequestEntity);
      if (result.error != null) {
        emit(LoginState.loginFailure(result.error!.data!.message!));
      } else {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        UserPreferences appPreferences =
            UserPreferences(sharedPreferences: sharedPreferences);
        await appPreferences.setUserProfile(
            result.result!.partnerDisplayName ?? "",
            result.result!.username ?? "");

        emit(const LoginState.loginSuccess());
      }
    } catch (e) {
      if (e is DioError) {
        emit(LoginState.loginFailure(e.message));
      } else {
        emit(LoginState.loginFailure(e.toString()));
      }
    }
  }
}
