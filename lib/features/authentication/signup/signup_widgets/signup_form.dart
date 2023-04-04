import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/helper/app_dialogs.dart';
import 'package:guitar_shop/core/helper/input_validators.dart';
import 'package:guitar_shop/core/helper/sized_box.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/features/authentication/signup/bloc/signup_bloc.dart';
import 'package:guitar_shop/features/authentication/signup/entities/sign_up_entities.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  // text input controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController conformPasswordController =
      TextEditingController();

  // focus node for input
  FocusNode focusEmail = FocusNode();
  FocusNode focusMobile = FocusNode();
  FocusNode focusfullName = FocusNode();
  FocusNode focusPassword = FocusNode();
  FocusNode focusConfirmPassword = FocusNode();

  // is password visible controlls for both password field
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          showSnackBar(context,
              message: "Account Successfully created",
              bgColor: ColorManager.secondaryGreen);
          // context.push(AppRoutes.landingPageRoute);
          Navigator.pop(context);
        }

        if (state is SignupFailure) {
          showSnackBar(context,
              message: state.errorMsg, bgColor: ColorManager.error);
        }
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(
            children: [
              _buildFormField(
                  controller: emailController,
                  inputType: TextInputType.emailAddress,
                  maxLength: 60,
                  focusNode: focusEmail,
                  hintText: TextManager.hintEmail),
              customSizedBox(height: 10),
              _buildFormField(
                  controller: mobileNumberController,
                  inputType: TextInputType.number,
                  maxLength: 10,
                  focusNode: focusMobile,
                  hintText: TextManager.hintMobile),
              customSizedBox(height: 10),
              _buildFormField(
                  controller: fullNameController,
                  inputType: TextInputType.emailAddress,
                  focusNode: focusfullName,
                  hintText: TextManager.hintFullName),
              customSizedBox(height: 10),
              _buildFormField(
                  controller: passwordController,
                  inputType: TextInputType.emailAddress,
                  obscureText: true,
                  focusNode: focusPassword,
                  icon: Icons.visibility,
                  hintText: TextManager.hintPassword),
              customSizedBox(height: 10),
              _buildFormField(
                  controller: conformPasswordController,
                  inputType: TextInputType.emailAddress,
                  obscureText: true,
                  focusNode: focusConfirmPassword,
                  icon: Icons.visibility,
                  hintText: TextManager.hintConfirmPassword),
              customSizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  if (!_formKey.currentState!.validate()) return;

                  if (conformPasswordController.text !=
                      passwordController.text) {
                    const snackBar = SnackBar(
                      content: Text('Password does not match'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                  context.read<SignupBloc>().add(SignUpButtonClicked(
                      SignUpEntities(
                          name: fullNameController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          phoneNumber: mobileNumberController.text)));
                },
                child: CustomBottom(
                  text: TextManager.signUp,
                  backgroundColor: ColorManager.primary,
                  textColor: ColorManager.white,
                  radius: 10,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    mobileNumberController.dispose();
    fullNameController.dispose();
    passwordController.dispose();
    conformPasswordController.dispose();
    super.dispose();
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
        validator: (controller == emailController)
            ? InputValidators.emailValidator
            : (controller == mobileNumberController)
                ? InputValidators.mobileNumberValidator
                : (controller == fullNameController)
                    ? InputValidators.commonValidation
                    : (controller == passwordController)
                        ? InputValidators.passwordValidator
                        : InputValidators.passwordValidator,
        keyboardType: inputType ?? TextInputType.emailAddress,
        style: GoogleFonts.inter(color: ColorManager.textDark),
        maxLength: maxLength ?? 36,
        focusNode: focusNode,
        obscureText: (obscureText != null) ? (isVisible) : false,
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
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              icon: Icon(
                (icon != null)
                    ? (isVisible ? Icons.visibility_off : Icons.visibility)
                    : icon,
                color: Colors.black45,
              )),
        ),
        onFieldSubmitted: (String val) {
          if (controller == emailController) {
            fieldFocusChange(context, focusEmail, focusMobile);
          }
          if (controller == mobileNumberController) {
            fieldFocusChange(context, focusMobile, focusfullName);
          }
          if (controller == fullNameController) {
            fieldFocusChange(context, focusfullName, focusPassword);
          }
          if (controller == passwordController) {
            fieldFocusChange(context, focusPassword, focusConfirmPassword);
          }
        });
  }

  fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    setState(() {
      currentFocus.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);
    });
  }
}
