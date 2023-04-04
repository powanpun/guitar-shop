import 'package:guitar_shop/features/profile/entity/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  final SharedPreferences _sharedPreferences;
  UserPreferences({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  //===================== set user ========================
  Future<void> setUserProfile(String name, String email) async {
    await _sharedPreferences.setString("name", name);
    await _sharedPreferences.setString("email", email);
  }

  //===================== get user ========================
  Future<UserModel> getUserProfile() async {
    String? name = _sharedPreferences.getString("name");
    String? email = _sharedPreferences.getString("email");
    return UserModel(name, email);
  }
}
