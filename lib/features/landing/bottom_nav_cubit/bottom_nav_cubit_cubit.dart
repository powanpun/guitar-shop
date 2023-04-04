import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guitar_shop/features/cart/cart_page/cart_page.dart';
import 'package:guitar_shop/features/homepage/homepage/homepage.dart';
import 'package:guitar_shop/features/order/order_page/order_page.dart';
import 'package:guitar_shop/features/profile/profile_page/profile_page.dart';

part 'bottom_nav_cubit_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavState(const Homepage(), 0));

  changeBottomNavIndex(int index) {
    try {
      switch (index) {
        case 0:
          emit(BottomNavState(const Homepage(), 0));
          break;
        case 1:
          emit(BottomNavState(const CartPage(), 1));
          break;
        case 2:
          emit(BottomNavState(const OrderPage(), 2));
          break;
        case 3:
          emit(BottomNavState(const ProfilePage(), 3));
          break;
      }
    } catch (e) {
      emit(state);
    }
  }
}
