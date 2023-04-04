import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/cached_network_image.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/cart/bloc/cart_bloc.dart';
import 'package:guitar_shop/features/cart/entities/cart_model.dart';
import 'package:guitar_shop/features/cart/entities/cart_request_entity.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';

import '../../../core/app_controller/router/router_manager.dart';

class CartItem extends StatefulWidget {
  final CartModel cartModel;
  final HomepageRepository homepageRepository;
  const CartItem(
      {super.key, required this.cartModel, required this.homepageRepository});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  late BaseResultModel result;
  Future<BaseResultModel> getData() async {
    try {
      int productId = widget.cartModel.productId![0] as int;
      result =
          await widget.homepageRepository.getFeaturedItemsDetail(productId);
    } catch (e) {
      debugPrint(e.toString());
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            color: ColorManager.profileBg,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder<BaseResultModel>(
              future:
                  getData(), // if you mean this method well return image url
              builder: (BuildContext context,
                  AsyncSnapshot<BaseResultModel> snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.result!.records!.isNotEmpty) {
                    ProductModel data = ProductModel.fromJson(snapshot
                        .data!.result!.records!.first as Map<String, dynamic>);
                    return GestureDetector(
                      onTap: () {
                        context.push(AppRoutes.detailPageRoute, extra: data);
                      },
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: CustomCachedImage(
                              height: 70,
                              width: 70,
                              imageUrl: (data.image_1920.runtimeType == String)
                                  ? data.image_1920 as String
                                  : "",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: ColorManager.secondaryGreen),
                            child: CustomText(
                              title:
                                  "x ${widget.cartModel.totalQuantity!.round().toString()}",
                              fontSize: 8,
                              color: ColorManager.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }
                if (snapshot.hasError) {
                  return const Text("error");
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: CustomText(
                        title: widget.cartModel.name ?? "",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        maxLine: 2,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    CustomText(
                      title: "Rs. ${widget.cartModel.priceSubTotal.toString()}",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
            BlocListener<CartBloc, CartState>(
              listener: (context, state) {
                if (state is CartUpdated) {
                  context.read<CartBloc>().add(const GetUserCart());
                }
              },
              child: GestureDetector(
                onTap: () {
                  showDialog<void>(
                    context: context,
                    barrierDismissible: true, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: CustomText(
                            title: 'Remove ${widget.cartModel.name}?',
                            color: ColorManager.textDark,
                            fontSize: 20,
                            maxLine: 1,
                            fontWeight: FontWeight.bold,
                            textOverflow: TextOverflow.ellipsis),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              CustomText(
                                  title:
                                      'Are you sure you want to remove this item?',
                                  color: ColorManager.textDark,
                                  fontSize: 14,
                                  textOverflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: ColorManager.black,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              padding: const EdgeInsets.all(16),
                              child: Text("Cancel",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: ColorManager.white)),
                            ),
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              context.read<CartBloc>().add(UpdateCart(
                                  CartRequestEntity(
                                      productId:
                                          widget.cartModel.productId![0] as int,
                                      quantity: 0)));
                            },
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: ColorManager.profileBg,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              padding: const EdgeInsets.all(16),
                              child: Text("Yes",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: ColorManager.textDark)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.delete,
                  size: 18,
                  color: ColorManager.primary,
                ),
              ),
            )
          ],
        ));
  }
}
