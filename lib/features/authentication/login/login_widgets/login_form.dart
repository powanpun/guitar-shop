import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/helper/app_dialogs.dart';
import 'package:guitar_shop/core/helper/input_validators.dart';
import 'package:guitar_shop/core/helper/padding_manager.dart';
import 'package:guitar_shop/core/helper/sized_box.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/authentication/cubit/auth_cubit.dart';
import 'package:guitar_shop/features/authentication/login/bloc/login_bloc.dart';
import 'package:guitar_shop/features/authentication/login/entities/login_entity.dart';
import 'package:guitar_shop/features/cart/bloc/cart_bloc.dart';
import 'package:guitar_shop/features/order/bloc/order_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  // text input controller
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // focus node
  FocusNode focusEmail = FocusNode();
  FocusNode focusPassword = FocusNode();
  // is password visible
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: ((context, state) {
        if (state is LoginRequest) {
          // showLoadingDialog(context);
        }
        if (state is LoginSuccess) {
          context.read<AuthCubit>().checkAuthState();

          context.read<CartBloc>().add(const GetUserCart());
          context.read<OrderBloc>().add(const GetAllOrders());
          showSnackBar(context,
              message: "Welcome to Guitar Shop",
              bgColor: ColorManager.secondaryGreen);
          context.push(AppRoutes.landingPageRoute);
        }
        if (state is LoginFailure) {
          showSnackBar(context, message: state.errorMsg);
        }
      }),
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(
            children: [
              _buildFormField(
                  controller: mobileNumberController,
                  inputType: TextInputType.emailAddress,
                  maxLength: 60,
                  focusNode: focusEmail,
                  hintText: TextManager.hintEmail),
              customSizedBox(height: 10),
              _buildFormField(
                  controller: passwordController,
                  inputType: TextInputType.emailAddress,
                  obscureText: true,
                  focusNode: focusPassword,
                  icon: Icons.visibility,
                  hintText: TextManager.hintPassword),
              customSizedBox(height: 20),
              GestureDetector(
                onTap: () => context.push(AppRoutes.forgotPasswordPageRoute),
                child: Padding(
                  padding: paddingAll(10),
                  child: CustomText(
                    title: TextManager.forgotPassword,
                    color: ColorManager.skyBlue,
                    fontSize: 14,
                  ),
                ),
              ),
              customSizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    FocusManager.instance.primaryFocus?.unfocus();

                    context.read<LoginBloc>().add(LoginButtonClicked(
                        LoginRequestEntity(
                            phoneNumber: mobileNumberController.text,
                            password: passwordController.text)));
                  }
                },
                child: CustomBottom(
                  text: TextManager.login,
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
    mobileNumberController.dispose();
    passwordController.dispose();
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
        keyboardType: inputType ?? TextInputType.emailAddress,
        validator: (controller == mobileNumberController)
            ? InputValidators.emailValidator
            : InputValidators.passwordValidator,
        style: GoogleFonts.inter(color: ColorManager.textDark),
        maxLength: maxLength ?? 36,
        focusNode: focusNode,
        obscureText: (obscureText != null) ? (isObscure) : false,
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
                  isObscure = !isObscure;
                });
              },
              icon: Icon(
                (icon != null)
                    ? (isObscure ? Icons.visibility_off : Icons.visibility)
                    : icon,
                color: Colors.black45,
              )),
        ),
        onFieldSubmitted: (String val) {
          if (controller == mobileNumberController) {
            fieldFocusChange(context, focusEmail, focusPassword);
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
