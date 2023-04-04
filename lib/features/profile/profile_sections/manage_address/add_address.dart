import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/helper/input_validators.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/profile/address/bloc/user_address_bloc.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final _addressFormKey = GlobalKey<FormState>();
  // text input controller for delivery info
  final TextEditingController cityController = TextEditingController();
  final TextEditingController street1Controller = TextEditingController();
  final TextEditingController street2Controller =
      TextEditingController(); // text input controller for invoice info
  final TextEditingController invoiceCityController = TextEditingController();
  final TextEditingController invoiceStreet1Controller =
      TextEditingController();
  final TextEditingController invoiceStreet2Controller =
      TextEditingController();
  // focus node
  FocusNode focuscity = FocusNode();
  FocusNode focusStreet = FocusNode();
  FocusNode focusStreet2 = FocusNode();
  FocusNode invoiceFocuscity = FocusNode();
  FocusNode invoiceFocusStreet = FocusNode();
  FocusNode invoiceFocusStreet2 = FocusNode();

  bool isChecked = false;
  @override
  void dispose() {
    cityController.dispose();
    street1Controller.dispose();
    street2Controller.dispose();
    invoiceFocuscity.dispose();
    invoiceFocusStreet.dispose();
    invoiceFocusStreet2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            color: ColorManager.white,
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const CustomText(
                    title: "Delivery Info",
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Form(
                      key: _addressFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildFormField(
                              controller: cityController,
                              inputType: TextInputType.emailAddress,
                              maxLength: 60,
                              focusNode: focuscity,
                              hintText: TextManager.hintCity),
                          const SizedBox(
                            height: 16,
                          ),
                          _buildFormField(
                              controller: street1Controller,
                              inputType: TextInputType.emailAddress,
                              maxLength: 60,
                              focusNode: focusStreet,
                              hintText: TextManager.hintStreet),
                          const SizedBox(
                            height: 16,
                          ),
                          _buildFormField(
                              controller: street2Controller,
                              inputType: TextInputType.emailAddress,
                              maxLength: 60,
                              focusNode: focusStreet2,
                              hintText: TextManager.hintStreet2),
                          const SizedBox(
                            height: 16,
                          ),
                          const CustomText(
                            title: "Invoice Info.",
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                child: Checkbox(
                                  checkColor: ColorManager.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                              ),
                              const CustomText(
                                title:
                                    "Use delivery address as invoice address",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ],
                          ),
                          Visibility(
                            visible: !isChecked,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                _buildFormField(
                                    controller: invoiceCityController,
                                    inputType: TextInputType.emailAddress,
                                    maxLength: 60,
                                    focusNode: invoiceFocuscity,
                                    hintText: TextManager.hintCity),
                                const SizedBox(
                                  height: 16,
                                ),
                                _buildFormField(
                                    controller: invoiceStreet1Controller,
                                    inputType: TextInputType.emailAddress,
                                    maxLength: 60,
                                    focusNode: invoiceFocusStreet,
                                    hintText: TextManager.hintStreet),
                                const SizedBox(
                                  height: 16,
                                ),
                                _buildFormField(
                                    controller: invoiceStreet2Controller,
                                    inputType: TextInputType.emailAddress,
                                    maxLength: 60,
                                    focusNode: invoiceFocusStreet2,
                                    hintText: TextManager.hintStreet2),
                                const SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  GestureDetector(
                    onTap: () {
                      if (_addressFormKey.currentState!.validate()) {
                        if (isChecked) {
                          context.read<UserAddressBloc>().add(AddUserAddress(
                                cityController.text,
                                street1Controller.text,
                                street2Controller.text,
                                cityController.text,
                                street1Controller.text,
                                street2Controller.text,
                              ));
                        } else {
                          context.read<UserAddressBloc>().add(AddUserAddress(
                                cityController.text,
                                street1Controller.text,
                                street2Controller.text,
                                invoiceCityController.text,
                                invoiceStreet1Controller.text,
                                invoiceStreet2Controller.text,
                              ));
                        }

                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: CustomBottom(
                      text: "Add Address",
                      padding: 16,
                      radius: 10,
                      textColor: ColorManager.white,
                      backgroundColor: ColorManager.blackBtnBg,
                    ),
                  ),
                ],
              ),
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
  }) {
    return TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: inputType ?? TextInputType.emailAddress,
        validator: InputValidators.commonValidation,
        style: GoogleFonts.inter(color: ColorManager.textDark),
        maxLength: maxLength ?? 36,
        focusNode: focusNode,
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
        ),
        onFieldSubmitted: (String val) {
          if (controller == cityController) {
            fieldFocusChange(context, focuscity, focusStreet);
          }
          if (controller == street1Controller) {
            fieldFocusChange(context, focusStreet, focusStreet2);
          }
          if (controller == street2Controller) {
            fieldFocusChange(context, focusStreet2, invoiceFocuscity);
          }
          if (controller == invoiceCityController) {
            fieldFocusChange(context, invoiceFocuscity, invoiceFocusStreet);
          }
          if (controller == invoiceStreet1Controller) {
            fieldFocusChange(context, invoiceFocusStreet, invoiceFocusStreet2);
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
