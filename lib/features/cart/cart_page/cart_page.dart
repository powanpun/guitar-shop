import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/helper/bloc/network_connection_bloc.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/core/widgets/no_connection.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/cart/bloc/cart_bloc.dart';
import 'package:guitar_shop/features/cart/cart_item_widgets/cart_item.dart';
import 'package:guitar_shop/features/cart/entities/cart_model.dart';
import 'package:guitar_shop/features/chcekout/entities/cart_totall_model.dart';
import 'package:guitar_shop/features/search/search_page/search_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: BlocBuilder<NetworkConnectionBloc, NetworkConnectionState>(
        builder: (context, state) {
          if (state is ConnectionFailure) {
            return const NoConnection();
          } else {
            return BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                if (state is CartLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is CartError) {
                  return Center(
                    child: Text(state.errorMsg),
                  );
                } else if (state is CartEmpty) {
                  return const NoItemWidget(
                    msg: "Your cart is empty.",
                  );
                } else if (state is CartLoaded) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 80),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.result.result!.records!.length,
                      itemBuilder: (context, index) {
                        CartModel cartModel = CartModel.fromJson(state.result
                            .result!.records![index] as Map<String, dynamic>);
                        return CartItem(
                          cartModel: cartModel,
                          homepageRepository: HomepageRepository(),
                        );
                      },
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            );
          }
        },
      ),
      bottomSheet: BlocBuilder<NetworkConnectionBloc, NetworkConnectionState>(
        builder: (context, state) {
          if (state is ConnectionSuccess) {
            return BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                if (state is CartLoaded) {
                  if (state.result.result!.records!.isNotEmpty) {
                    List<CartModel> cartList = [];
                    double totalPrice = 0.0;
                    double totalTaxPrice = 0.0;

                    for (var item in state.result.result!.records!) {
                      CartModel cartModel =
                          CartModel.fromJson(item as Map<String, dynamic>);
                      cartList.add(cartModel);
                      totalPrice =
                          cartModel.priceSubTotal!.toDouble() + totalPrice;
                      totalTaxPrice = cartModel.priceTax! + totalTaxPrice;
                    }

                    return Container(
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
                                title: "Rs. $totalPrice",
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Flexible(
                              child: GestureDetector(
                                onTap: () {
                                  context.push(AppRoutes.checkOutPageRoute,
                                      extra: CartTotalModel(
                                          totalPrice, totalTaxPrice, cartList));
                                },
                                child: CustomBottom(
                                  text: "Proceed",
                                  padding: 16,
                                  radius: 10,
                                  textColor: ColorManager.white,
                                  backgroundColor: ColorManager.blackBtnBg,
                                ),
                              ),
                            )
                          ],
                        ));
                  } else {
                    return const SizedBox.shrink();
                  }
                } else {
                  return const SizedBox.shrink();
                }
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
