import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/helper/app_dialogs.dart';
import 'package:guitar_shop/core/manager/assets_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/data_layer/repository/auth_repository/auth_repository.dart';
import 'package:guitar_shop/features/authentication/cubit/auth_cubit.dart';
import 'package:guitar_shop/features/landing/bottom_nav_cubit/bottom_nav_cubit_cubit.dart';
import 'package:guitar_shop/features/profile/widgets/loggedin_profile.dart';
import 'package:guitar_shop/features/profile/widgets/loggedout_profile.dart';
import 'package:share_plus/share_plus.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const Center(child: CircularProgressIndicator());
              },
              unAuthenticated: () {
                return const LoggedOutProfileUI();
              },
              authenticated: () {
                // context.read<ProfileBloc>().add(const GetProfileInfo());
                return const LoggedInProfileUI();
              },
            );
          },
        ),
      )),
    );
  }
}

List<ProfilePageTileModel> profilePageTiles = [
  ProfilePageTileModel(
    label: "Manage Address",
    prefix: Icon(
      Icons.location_on,
      color: ColorManager.black,
    ),
    onPressed: (context) {
      context.push(AppRoutes.manageUserAddressPageRoute);
    },
    showAlways: false,
    showDivider: true,
  ),
  ProfilePageTileModel(
    label: "About Guitar Shop Nepal",
    prefix: SvgPicture.asset(
      AssetManager.svgLogo,
      height: 24,
      width: 24,
    ),
    onPressed: (context) {
      context.push(AppRoutes.aboutPageRoute);
    },
    showAlways: true,
  ),
  ProfilePageTileModel(
    label: "Share Guitar Shop Nepal",
    prefix: Icon(
      Icons.share,
      size: 20,
      color: ColorManager.black,
    ),
    onPressed: (context) async {
      Share.share(
          "https://play.google.com/store/apps/details?id=com.eydean.guitarshop");
    },
    showAlways: true,
  ),
  ProfilePageTileModel(
    label: "Logout",
    prefix: Icon(
      Icons.logout,
      color: ColorManager.black,
      size: 20,
    ),
    onPressed: (context) {
      showConfirmDialog(context,
          title: "Log out?",
          desctiption: "Are you sure you want to logout?", onConfirm: () async {
        context.read<AuthCubit>().logout();
        AuthRepository authRepository = AuthRepository();
        context.read<BottomNavCubit>().changeBottomNavIndex(0);
        showSnackBar(
          context,
          message: "Logged out successfully",
          behavior: SnackBarBehavior.floating,
        );
        await authRepository.logout();

        debugPrint("logged out");
      });
    },
    showAlways: false,
  )
];

class ProfilePageTileModel {
  final String label;
  final Widget prefix;
  final Function(BuildContext context) onPressed;
  final bool showAlways; // tile be shown when the user is loggedout also :)

  final bool? showDivider;

  ProfilePageTileModel({
    required this.label,
    required this.prefix,
    required this.onPressed,
    required this.showAlways,
    this.showDivider = false,
  });
}
