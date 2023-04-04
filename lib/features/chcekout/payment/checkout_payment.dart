import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/helper/app_dialogs.dart';
import 'package:guitar_shop/core/manager/assets_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/cart/bloc/cart_bloc.dart';
import 'package:guitar_shop/features/chcekout/bloc/checkout_bloc.dart';
import 'package:guitar_shop/features/landing/bottom_nav_cubit/bottom_nav_cubit_cubit.dart';
import 'package:guitar_shop/features/order/bloc/order_bloc.dart';
import 'package:lottie/lottie.dart';

class CheckOutPayment extends StatefulWidget {
  final double totalPrice;
  const CheckOutPayment({super.key, required this.totalPrice});

  @override
  State<CheckOutPayment> createState() => _CheckOutPaymentState();
}

class _CheckOutPaymentState extends State<CheckOutPayment> {
  PaymentMethod _paymentMethod = PaymentMethod.cod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
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
                      title: 'Select Payment Method',
                      color: ColorManager.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: ColorManager.profileBg,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _paymentMethod = PaymentMethod.cod;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            color: ColorManager.profileBg,
                            child: Row(
                              children: [
                                Radio<PaymentMethod>(
                                  value: PaymentMethod.cod,
                                  groupValue: _paymentMethod,
                                  onChanged: (PaymentMethod? value) {
                                    setState(() {
                                      _paymentMethod = value!;
                                    });
                                  },
                                ),
                                SvgPicture.asset(AssetManager.svgCod),
                                const SizedBox(
                                  width: 20,
                                ),
                                const CustomText(
                                  title: "Cash on delivery",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _paymentMethod = PaymentMethod.esewa;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            color: ColorManager.profileBg,
                            child: Row(
                              children: [
                                Radio<PaymentMethod>(
                                  value: PaymentMethod.esewa,
                                  groupValue: _paymentMethod,
                                  onChanged: (PaymentMethod? value) {
                                    setState(() {
                                      _paymentMethod = value!;
                                    });
                                  },
                                ),
                                Image.asset(AssetManager.esewaIcon),
                                const SizedBox(
                                  width: 20,
                                ),
                                const CustomText(
                                  title: "eSewa",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomText(
                  title: "Rs. ${widget.totalPrice} /-",
                  fontWeight: FontWeight.w900,
                ),
              ),
              Flexible(
                child: BlocListener<CheckoutBloc, CheckoutState>(
                  listener: (context, state) {
                    if (state is CheckoutComplete) {
                      context.read<CartBloc>().add(const GetUserCart());
                      context.read<OrderBloc>().add(const GetAllOrders());
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (ctx) => WillPopScope(
                                onWillPop: () async {
                                  return false;
                                },
                                child: AlertDialog(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  actions: <Widget>[
                                    Center(
                                      child: Wrap(
                                        alignment: WrapAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 300,
                                            width: 300,
                                            child: Lottie.asset(
                                                AssetManager.successAnimation,
                                                repeat: false),
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          const CustomText(
                                            title: "Thank you for your order.",
                                            textAlign: TextAlign.center,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w900,
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 32.0),
                                            child: CustomText(
                                              textAlign: TextAlign.center,
                                              title:
                                                  "Our customer service will contact you shortly to verify your order.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 60,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                context
                                                    .read<BottomNavCubit>()
                                                    .changeBottomNavIndex(2);
                                                context.go(
                                                    AppRoutes.landingPageRoute);
                                              },
                                              child: CustomBottom(
                                                padding: 16,
                                                radius: 10,
                                                backgroundColor:
                                                    ColorManager.blackBtnBg,
                                                textColor: ColorManager.white,
                                                text: "View Order List",
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                    }
                    if (state is CheckoutError) {
                      showSnackBar(context,
                          message:
                              "Cannot perform the task. Please try again later",
                          bgColor: ColorManager.error);
                    }
                  },
                  child: GestureDetector(
                    onTap: () {
                      if (_paymentMethod == PaymentMethod.esewa) {
                        String CLIENT_ID =
                            "JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R  ";
                        String SECRET_KEY =
                            "BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==";

                        try {
                          EsewaFlutterSdk.initPayment(
                            esewaConfig: EsewaConfig(
                              environment: Environment.test,
                              clientId: CLIENT_ID,
                              secretId: SECRET_KEY,
                            ),
                            esewaPayment: EsewaPayment(
                              productId: "1",
                              productName: "checkout",
                              productPrice: widget.totalPrice.toString(),
                              callbackUrl: "www.test-url.com",
                            ),
                            onPaymentSuccess: (EsewaPaymentSuccessResult data) {
                              debugPrint(":::SUCCESS::: => ${data.refId}");
                              context
                                  .read<CheckoutBloc>()
                                  .add(StartCheckout("esewa", data.refId));
                            },
                            onPaymentFailure: (data) {
                              debugPrint(":::FAILURE::: => $data");
                            },
                            onPaymentCancellation: (data) {
                              debugPrint(":::CANCELLATION::: => $data");
                            },
                          );
                        } on Exception catch (e) {
                          debugPrint("EXCEPTION : ${e.toString()}");
                        }
                      } else {
                        context
                            .read<CheckoutBloc>()
                            .add(const StartCheckout("cod", ""));
                      }
                    },
                    child: CustomBottom(
                      text: "Confirm Order",
                      padding: 16,
                      radius: 10,
                      textColor: ColorManager.white,
                      backgroundColor: ColorManager.blackBtnBg,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

enum PaymentMethod { esewa, cod }
