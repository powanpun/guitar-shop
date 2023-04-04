import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/helper/padding_manager.dart';
import 'package:guitar_shop/core/helper/sized_box.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/core/widgets/logo_widget.dart';
import '../login_widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: paddingAll(45),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                const SizedBox(width: 140, height: 115, child: LogoWidget()),
                customSizedBox(height: 30),
                //title
                CustomText(
                    title: TextManager.login,
                    color: ColorManager.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w900),
                customSizedBox(height: 40),
                //login form
                const LoginForm(),
                customSizedBox(height: 30),
                //no account text
                GestureDetector(
                  onTap: () async {},
                  child: CustomText(
                    title: TextManager.noAccount,
                    color: ColorManager.textDark,
                    fontSize: 16,
                  ),
                ),

                customSizedBox(height: 20),
                //signup button
                GestureDetector(
                  onTap: () => context.push(AppRoutes.signUpPageRoute),
                  child: CustomBottom(
                    text: TextManager.signUp,
                    backgroundColor: ColorManager.blackBtnBg,
                    textColor: ColorManager.white,
                    radius: 10,
                  ),
                ),

                customSizedBox(height: 40),

                //skip text
                GestureDetector(
                  onTap: () {
                    context.push(AppRoutes.landingPageRoute);
                  },
                  child: CustomText(
                    title: TextManager.skip,
                    color: ColorManager.skyBlue,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
