import 'package:guitar_shop/data_layer/api_services/api_client.dart';
import 'package:guitar_shop/data_layer/model/result/result_model.dart';
import 'package:guitar_shop/features/authentication/login/entities/login_entity.dart';
import 'package:guitar_shop/features/authentication/signup/entities/sign_up_entities.dart';

class AuthRepository {
  late ApiClient _apiClient;

  AuthRepository() {
    _apiClient = ApiClient();
  }

  //Login
  Future<Result> loginRequest(LoginRequestEntity loginRequestEntity) async {
    final result = await _apiClient.loginRequest(loginRequestEntity);
    return result;
  }

  //sign Up

  Future<Result> signUpRequest(SignUpEntities signUpEntities) async {
    final result = await _apiClient.signUpRequest(signUpEntities);
    return result;
  }

  logout() async {
    await _apiClient.logout();
  }
}
