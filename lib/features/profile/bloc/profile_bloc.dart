import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/data_layer/local_data/shared_prefs.dart';
import 'package:guitar_shop/features/profile/entity/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const Initial()) {
    on<GetUserProfile>((event, emit) async {
      try {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        UserPreferences appPreferences =
            UserPreferences(sharedPreferences: sharedPreferences);
        UserModel user = await appPreferences.getUserProfile();
        emit(UserProfileLoaded(user));
      } catch (e) {
        debugPrint(e.toString());
      }
    });
  }
}
