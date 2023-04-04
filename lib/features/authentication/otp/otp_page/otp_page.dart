import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitar_shop/core/helper/padding_manager.dart';
import 'package:guitar_shop/core/helper/sized_box.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String otpCode = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: paddingAll(28),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomText(
                      title: TextManager.verification,
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                    ),
                    customSizedBox(height: 20),
                    CustomText(
                        title: TextManager.otpDigit,
                        fontSize: 14,
                        color: ColorManager.textGrey,
                        textAlign: TextAlign.center),
                    customSizedBox(height: 50),
                    CustomText(
                        title: TextManager.enterOtp,
                        fontSize: 16,
                        color: ColorManager.textGrey,
                        textAlign: TextAlign.center),
                    customSizedBox(height: 30),
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (String value) {
                        setState(() {
                          otpCode = value;
                        });
                      },
                      enableActiveFill: true,
                      animationDuration: const Duration(milliseconds: 300),
                      blinkWhenObscuring: true,
                      cursorColor: Colors.black45,
                      keyboardType: TextInputType.number,
                      cursorHeight: 16,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(6),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        selectedColor: ColorManager.hintColor.withOpacity(0.1),
                        inactiveColor: ColorManager.lightGrey,
                        activeColor: ColorManager.primary,
                        selectedFillColor: ColorManager.white,
                        inactiveFillColor: ColorManager.white,
                        activeFillColor: ColorManager.white,
                        fieldHeight: AppSize.s70,
                        fieldWidth: AppSize.s60,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    const SizedBox(height: AppSize.s40),
                    CustomText(
                      title: TextManager.resendOtp,
                      fontSize: 14,
                      color: ColorManager.categorySliderTextColor,
                    ),
                    const SizedBox(height: AppSize.s40),
                    GestureDetector(
                      onTap: () {
                        if (otpCode == '') {
                        } else {}
                      },
                      child: CustomBottom(
                          text: TextManager.verifybtn,
                          textColor: ColorManager.white,
                          backgroundColor: ColorManager.primary,
                          fontSize: 18,
                          padding: 16,
                          radius: 10),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
