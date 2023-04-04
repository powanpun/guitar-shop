import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/helper/app_dialogs.dart';
import 'package:guitar_shop/core/manager/assets_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/authentication/cubit/auth_cubit.dart';
import 'package:guitar_shop/features/landing/bottom_nav_cubit/bottom_nav_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationHandlerPage extends StatefulWidget {
  const NavigationHandlerPage({Key? key}) : super(key: key);

  @override
  NavigationHandlerPageState createState() => NavigationHandlerPageState();
}

Future<bool> _onWillPop(BuildContext context, int navIndex) async {
  if (navIndex != 0) {
    context.read<BottomNavCubit>().changeBottomNavIndex(0);
    return false;
  } else {
    final value = await showExitDialog(context);
    if (value != null && value == true) {
      return true;
    } else {
      return false;
    }
  }
}

class NavigationHandlerPageState extends State<NavigationHandlerPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentTab = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        currentTab = state.currentIndex;
        return WillPopScope(
          onWillPop: () {
            return _onWillPop(context, state.currentIndex);
          },
          child: Scaffold(
            key: _scaffoldKey,
            body: state.screen,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              notchMargin: 8,
              color: ColorManager.white,
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => context
                          .read<BottomNavCubit>()
                          .changeBottomNavIndex(0),
                      child: Container(
                        padding:
                            const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                                currentTab == 0
                                    ? Icons.home
                                    : Icons.home_outlined,
                                size: 25,
                                color: currentTab == 0
                                    ? ColorManager.primary
                                    : ColorManager.grey3),
                            const SizedBox(
                              height: 2,
                            ),
                            CustomText(
                                title: "Home",
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: currentTab == 0
                                    ? ColorManager.black
                                    : ColorManager.grey3),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (BlocProvider.of<AuthCubit>(context).state ==
                            const Authenticated()) {
                          context
                              .read<BottomNavCubit>()
                              .changeBottomNavIndex(1);
                        } else {
                          context.push(AppRoutes.loginPageRoute);
                        }
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.only(bottom: 8, right: 8, left: 8),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                                currentTab == 1
                                    ? Icons.shopping_cart
                                    : Icons.shopping_cart_outlined,
                                size: 25,
                                color: currentTab == 1
                                    ? ColorManager.primary
                                    : ColorManager.grey3),
                            const SizedBox(
                              height: 2,
                            ),
                            CustomText(
                                title: "My Cart",
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: currentTab == 1
                                    ? ColorManager.black
                                    : ColorManager.grey3),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push(AppRoutes.tunnerPageRoute);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 48,
                              width: 48,
                              child: SvgPicture.asset(
                                AssetManager.svgGuiter,
                                width: 48,
                                height: 48,
                              )),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (BlocProvider.of<AuthCubit>(context).state ==
                            const Authenticated()) {
                          context
                              .read<BottomNavCubit>()
                              .changeBottomNavIndex(2);
                        } else {
                          context.push(AppRoutes.loginPageRoute);
                        }
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                                currentTab == 2
                                    ? Icons.list_alt
                                    : Icons.list_alt_outlined,
                                size: 25,
                                color: currentTab == 2
                                    ? ColorManager.primary
                                    : ColorManager.grey3),
                            const SizedBox(
                              height: 2,
                            ),
                            CustomText(
                                title: "Orders",
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: currentTab == 2
                                    ? ColorManager.black
                                    : ColorManager.grey3)
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context
                          .read<BottomNavCubit>()
                          .changeBottomNavIndex(3),
                      child: Container(
                        padding:
                            const EdgeInsets.only(bottom: 8, right: 8, left: 8),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                                currentTab == 3
                                    ? Icons.account_circle
                                    : Icons.account_circle_outlined,
                                size: 25,
                                color: currentTab == 3
                                    ? ColorManager.primary
                                    : ColorManager.grey3),
                            const SizedBox(
                              height: 2,
                            ),
                            CustomText(
                                title: "Profile",
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: currentTab == 3
                                    ? ColorManager.black
                                    : ColorManager.grey3)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
