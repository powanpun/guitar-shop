import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/helper/input_validators.dart';
import 'package:guitar_shop/core/helper/padding_manager.dart';
import 'package:guitar_shop/core/helper/sized_box.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/core/widgets/logo_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

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
                    title: TextManager.forgotPasswordTitle,
                    fontSize: 36,
                    fontWeight: FontWeight.w900),

                customSizedBox(height: 40),
                //login form
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _buildFormField(
                          controller: emailController,
                          inputType: TextInputType.emailAddress,
                          maxLength: 32,
                          hintText: TextManager.hintEmail),
                      customSizedBox(height: 20),
                      CustomBottom(
                        text: TextManager.requestOtp,
                        backgroundColor: ColorManager.primary,
                        radius: 10,
                        textColor: ColorManager.white,
                      )
                    ],
                  ),
                ),
                customSizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormField({
    TextEditingController? controller,
    TextInputType? inputType,
    FocusNode? focusNode,
    int? maxLength,
    String? hintText,
    bool? obscureText,
    IconData? icon,
  }) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: inputType ?? TextInputType.emailAddress,
      validator: InputValidators.emailValidator,
      style: GoogleFonts.inter(color: ColorManager.textDark),
      maxLength: maxLength ?? 36,
      focusNode: focusNode,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        fillColor: ColorManager.white,
        filled: true,
        counterText: '',
        contentPadding: const EdgeInsets.all(16),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.textDark,
            ),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.errorOpacity50,
            ),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.errorOpacity50,
            ),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        hintText: hintText ?? "",
        hintStyle: TextStyle(
          color: ColorManager.hintColor,
          fontWeight: FontWeight.w500,
        ),
        suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.black45,
            )),
      ),
    );
  }
}
