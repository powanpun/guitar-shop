// ignore_for_file: use_build_context_synchronously

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/helper/bloc/network_connection_bloc.dart';
import 'package:guitar_shop/core/widgets/logo_widget.dart';
import 'package:guitar_shop/features/authentication/cubit/auth_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    checkConnection();
    context.read<AuthCubit>().checkAuthState();
  }

  void checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      context.read<NetworkConnectionBloc>().add(const Disconnected());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: () {
            context.go(AppRoutes.landingPageRoute);
          },
          orElse: () {
            context.go(AppRoutes.loginPageRoute);
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: LogoWidget(),
        ),
      ),
    );
  }
}
