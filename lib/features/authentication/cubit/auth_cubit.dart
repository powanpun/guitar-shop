import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
// final AppPreferences appPreferences;
  AuthCubit() : super(const AuthState.initial());
  Future<void> checkAuthState() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String initialData = prefs.getString('initial_data') ?? "";
      if (initialData != "") {
        emit(const Authenticated());
      } else {
        emit(const UnAuthenticated());
      }
    } catch (e) {
      emit(const UnAuthenticated());
    }
  }

  Future<void> logout() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('initial_data', "");
      emit(const UnAuthenticated());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
