import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/extenstions/extenstions.dart';
import 'package:guitar_shop/core/helper/app_dialogs.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/user_repository/user_repository.dart';
import 'package:guitar_shop/features/chcekout/entities/cart_totall_model.dart';
import 'package:guitar_shop/features/chcekout/entities/delivery_method_model.dart';
import 'package:guitar_shop/features/profile/address/bloc/user_address_bloc.dart';

class CheckOutPage extends StatefulWidget {
  final CartTotalModel cartTotalModel;
  const CheckOutPage({super.key, required this.cartTotalModel});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  final UserRepository _userRepository = UserRepository();

  ValueNotifier<double> totalPrice = ValueNotifier(0.0);
  @override
  void initState() {
    print(widget.cartTotalModel.cart);
    super.initState();
  }

  Future<BaseResultModel> getDeiveryData() async {
    try {
      BaseResultModel resultModel = await _userRepository.getDeliveryMethod();
      DeliveryMethodModel deliveryMethodModel = DeliveryMethodModel.fromJson(
          resultModel.result!.records![0] as Map<String, dynamic>);
      BaseResultModel result = await _userRepository
          .addDeliveryMethod(deliveryMethodModel.id as int);
      return result;
    } catch (e) {
      return const BaseResultModel();
    }
  }

  Future<DeliveryMethodModel> getDeiveryRate() async {
    try {
      BaseResultModel resultModel = await _userRepository.getDeliveryMethod();
      DeliveryMethodModel deliveryMethodModel = DeliveryMethodModel.fromJson(
          resultModel.result!.records![0] as Map<String, dynamic>);

      return deliveryMethodModel;
    } catch (e) {
      return const DeliveryMethodModel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
                      title: 'Address Info',
                      color: ColorManager.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  BlocBuilder<UserAddressBloc, UserAddressState>(
                    builder: (context, state) {
                      if (state is UserAddressLoaded) {
                        if (state.addressModel.isEmpty) {
                          return GestureDetector(
                            onTap: () {
                              context
                                  .push(AppRoutes.manageUserAddressPageRoute);
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
                        } else {
                          return Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: ColorManager.profileBg,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                ListView.builder(
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
                                            padding: const EdgeInsets.only(
                                                bottom: 8),
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
                                          children: [
                                            const CustomText(
                                              title: "City: ",
                                              fontWeight: FontWeight.w500,
                                            ),
                                            Align(
                                              child: CustomText(
                                                title: state.addressModel[index]
                                                        .city ??
                                                    "",
                                                fontWeight: FontWeight.w500,
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
                                                title: state.addressModel[index]
                                                        .street ??
                                                    "",
                                                fontWeight: FontWeight.w500,
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
                                                title: state.addressModel[index]
                                                        .street2 ??
                                                    "",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.push(
                                        AppRoutes.manageUserAddressPageRoute);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(top: 16),
                                    decoration: BoxDecoration(
                                        color: ColorManager.profileBg,
                                        borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: CustomBottom(
                                      text: "Manage Address",
                                      padding: 16,
                                      radius: 10,
                                      backgroundColor: ColorManager.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                      }
                      if (state is UserAddressLoadError) {
                        return CustomText(
                          title: state.errorMsg,
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  ),
                ],
              ),
            ),
            FutureBuilder(
              future: getDeiveryRate(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  totalPrice.value = (((snapshot.data!.fixedPrice) as double) +
                          widget.cartTotalModel.totalPrice) +
                      ((widget.cartTotalModel.totalTaxPrice));
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          title: "Cart Info.",
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: CustomText(
                                title: "Sub Total",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: CustomText(
                                  title: widget.cartTotalModel.totalPrice
                                      .toString(),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: CustomText(
                                title: "Tax Amount",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: CustomText(
                                  title: ((widget.cartTotalModel.totalTaxPrice))
                                      .toString(),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: CustomText(
                                title: "Delivery Charge",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: CustomText(
                                  title: (snapshot.data!.fixedPrice as double)
                                      .toString(),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: CustomText(
                                title: "Grand Total",
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: CustomText(
                                  title: totalPrice.value.toString(),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Text("error on setting delivery data");
                }
              },
            )
          ],
        ),
      )),
      bottomSheet: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.white,
            boxShadow: [
              BoxShadow(
                color: ColorManager.grey4,
                spreadRadius: 2,
                blurRadius: 1,
              ),
            ],
          ),
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: BlocBuilder<UserAddressBloc, UserAddressState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        if (state is UserAddressLoaded) {
                          if (state.addressModel.isNotEmpty) {
                            context.push(AppRoutes.checkoutPaymentPageRoute,
                                extra: totalPrice.value);
                          } else {
                            showSnackBar(context,
                                message: "User address not provided",
                                bgColor: ColorManager.error);
                          }
                        } else {
                          showSnackBar(context,
                              message: "User address load error",
                              bgColor: ColorManager.error);
                        }
                      },
                      child: CustomBottom(
                        text: "Check Out",
                        padding: 16,
                        radius: 10,
                        textColor: ColorManager.white,
                        backgroundColor: ColorManager.black,
                      ),
                    ),
                  )
                ],
              );
            },
          )),
    );
  }
}
