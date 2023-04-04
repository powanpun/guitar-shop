import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/extenstions/extenstions.dart';
import 'package:guitar_shop/core/helper/app_dialogs.dart';
import 'package:guitar_shop/core/helper/input_validators.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/profile/address/bloc/user_address_bloc.dart';

class ManageUserAddress extends StatefulWidget {
  const ManageUserAddress({super.key});

  @override
  State<ManageUserAddress> createState() => _ManageUserAddressState();
}

class _ManageUserAddressState extends State<ManageUserAddress> {
  final _addressFormKey = GlobalKey<FormState>();
  final _updateaddressFormKey = GlobalKey<FormState>();
  // text input controller for delivery info
  final TextEditingController cityController = TextEditingController();
  final TextEditingController street1Controller = TextEditingController();
  final TextEditingController street2Controller = TextEditingController();
  // text input controller for invoice info
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
      appBar: AppBar(
        title: const Text("My Address"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: ColorManager.blackBtnBg,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      child: CustomText(
                        title: 'Address info',
                        color: ColorManager.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    BlocConsumer<UserAddressBloc, UserAddressState>(
                      listener: (context, state) {
                        if (state is UserAddressAdded) {
                          context
                              .read<UserAddressBloc>()
                              .add(const GetUserAddress());
                          showSnackBar(context,
                              message: state.msg,
                              bgColor: ColorManager.secondaryGreen);
                        }
                        if (state is UserAddressAddError) {
                          showSnackBar(context,
                              message: state.errorMsg,
                              bgColor: ColorManager.error);
                        }
                      },
                      builder: (context, state) {
                        if (state is UserAddressLoaded) {
                          if (state.addressModel.isNotEmpty) {
                            return Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: ColorManager.profileBg,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.addressModel.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 8),
                                          child: CustomText(
                                            title:
                                                "${(state.addressModel[index].type!).capitalize()} address",
                                            color: ColorManager.textDark,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const CustomText(
                                                    title: "City: ",
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  Align(
                                                    child: CustomText(
                                                      title: state
                                                              .addressModel[
                                                                  index]
                                                              .city ??
                                                          "",
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const CustomText(
                                                    title: "Street: ",
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  Align(
                                                    child: CustomText(
                                                      title: state
                                                              .addressModel[
                                                                  index]
                                                              .street ??
                                                          "",
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const CustomText(
                                                    title: "Street2: ",
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  Align(
                                                    child: CustomText(
                                                      title: state
                                                              .addressModel[
                                                                  index]
                                                              .street2 ??
                                                          "",
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              )
                                            ],
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                              onTap: () {
                                                if (state.addressModel[index]
                                                        .type ==
                                                    "delivery") {}

                                                cityController.text = state
                                                    .addressModel[index].city!;
                                                street1Controller.text = state
                                                    .addressModel[index]
                                                    .street!;
                                                street2Controller.text = state
                                                    .addressModel[index]
                                                    .street2!;

                                                showModalBottomSheet<void>(
                                                  context: context,
                                                  isScrollControlled: true,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16),
                                                      color: ColorManager.white,
                                                      child: Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: <Widget>[
                                                            const CustomText(
                                                              title:
                                                                  "Address Info.",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              fontSize: 20,
                                                            ),
                                                            const SizedBox(
                                                              height: 16,
                                                            ),
                                                            Form(
                                                                key:
                                                                    _updateaddressFormKey,
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    _buildFormField(
                                                                        controller:
                                                                            cityController,
                                                                        inputType:
                                                                            TextInputType
                                                                                .emailAddress,
                                                                        maxLength:
                                                                            60,
                                                                        focusNode:
                                                                            focuscity,
                                                                        hintText:
                                                                            TextManager.hintCity),
                                                                    const SizedBox(
                                                                      height:
                                                                          16,
                                                                    ),
                                                                    _buildFormField(
                                                                        controller:
                                                                            street1Controller,
                                                                        inputType:
                                                                            TextInputType
                                                                                .emailAddress,
                                                                        maxLength:
                                                                            60,
                                                                        focusNode:
                                                                            focusStreet,
                                                                        hintText:
                                                                            TextManager.hintStreet),
                                                                    const SizedBox(
                                                                      height:
                                                                          16,
                                                                    ),
                                                                    _buildFormField(
                                                                        controller:
                                                                            street2Controller,
                                                                        inputType:
                                                                            TextInputType
                                                                                .emailAddress,
                                                                        maxLength:
                                                                            60,
                                                                        focusNode:
                                                                            focusStreet2,
                                                                        hintText:
                                                                            TextManager.hintStreet2),
                                                                    const SizedBox(
                                                                      height:
                                                                          16,
                                                                    ),
                                                                  ],
                                                                )),
                                                            GestureDetector(
                                                              onTap: () {
                                                                if (_updateaddressFormKey
                                                                    .currentState!
                                                                    .validate()) {
                                                                  Navigator.pop(
                                                                      context);
                                                                  context.read<UserAddressBloc>().add(UpdateUserAddress(
                                                                      state
                                                                          .addressModel[
                                                                              index]
                                                                          .id!,
                                                                      cityController
                                                                          .text,
                                                                      street1Controller
                                                                          .text,
                                                                      street2Controller
                                                                          .text,
                                                                      state
                                                                          .addressModel[
                                                                              index]
                                                                          .type!));
                                                                } else {
                                                                  return;
                                                                }
                                                              },
                                                              child:
                                                                  CustomBottom(
                                                                text:
                                                                    "Update Address",
                                                                padding: 16,
                                                                radius: 10,
                                                                textColor:
                                                                    ColorManager
                                                                        .white,
                                                                backgroundColor:
                                                                    ColorManager
                                                                        .blackBtnBg,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Icon(
                                                Icons.edit,
                                                color: ColorManager.primary
                                                    .withOpacity(0.8),
                                                size: 20,
                                              ))
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              ),
                            );
                          } else {
                            return GestureDetector(
                              onTap: () {
                                context.push(AppRoutes.addAddressPageRoute);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: ColorManager.profileBg,
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: CustomBottom(
                                  text: "Add New Address",
                                  padding: 16,
                                  radius: 10,
                                  backgroundColor: ColorManager.white,
                                ),
                              ),
                            );
                          }
                        }
                        if (state is UserAddressLoadError) {
                          return Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            child: CustomText(
                              title: state.errorMsg,
                              color: ColorManager.white,
                            ),
                          );
                        } else {
                          return const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showAddressModel(
      BuildContext context, String modelTitle, String action) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          color: ColorManager.white,
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CustomText(
                  title: modelTitle,
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
                        GestureDetector(
                          child: Checkbox(
                            checkColor: ColorManager.primary,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ),
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
                    )),
                GestureDetector(
                  onTap: () {
                    if (_addressFormKey.currentState!.validate()) {
                      Navigator.pop(context);
                      // context.read<UserAddressBloc>().add(AddUserAddress(
                      //       cityController.text,
                      //       street1Controller.text,
                      //       street2Controller.text,
                      //     ));
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
        );
      },
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
