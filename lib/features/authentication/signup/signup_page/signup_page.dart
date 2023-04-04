import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/helper/padding_manager.dart';
import 'package:guitar_shop/core/helper/sized_box.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/core/widgets/logo_widget.dart';
import 'package:guitar_shop/features/authentication/signup/signup_widgets/signup_form.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                const CustomText(
                    title: TextManager.signUp,
                    fontSize: 36,
                    fontWeight: FontWeight.w900),

                customSizedBox(height: 40),
                //login form
                const SignUpForm(),
                customSizedBox(height: 30),
                //no account text
                CustomText(
                    title: TextManager.alreadyHaveAccount,
                    fontSize: 16,
                    color: ColorManager.textDark),

                customSizedBox(height: 20),
                //signup button
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: CustomBottom(
                    text: TextManager.login,
                    backgroundColor: ColorManager.blackBtnBg,
                    textColor: ColorManager.white,
                    radius: 10,
                  ),
                ),
                customSizedBox(height: 40),
                //skip text
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: TextManager.agree,
                      style: GoogleFonts.lato(
                          color: ColorManager.textDark,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                      children: <TextSpan>[
                        TextSpan(
                          text: TextManager.terms,
                          style: GoogleFonts.lato(
                              color: ColorManager.skyBlue,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: TextManager.and,
                          style: GoogleFonts.lato(
                              color: ColorManager.textDark,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: TextManager.privacy,
                          style: GoogleFonts.lato(
                              color: ColorManager.skyBlue,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
