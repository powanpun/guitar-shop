import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/helper/app_dialogs.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/cached_network_image.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/authentication/cubit/auth_cubit.dart';
import 'package:guitar_shop/features/cart/bloc/cart_bloc.dart';
import 'package:guitar_shop/features/cart/entities/cart_model.dart';
import 'package:guitar_shop/features/cart/entities/cart_request_entity.dart';
import 'package:guitar_shop/features/detail_page/bloc/detail_page_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';
import 'package:guitar_shop/features/landing/bottom_nav_cubit/bottom_nav_cubit_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailPage extends StatefulWidget {
  final ProductModel records;
  const DetailPage({super.key, required this.records});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final ValueNotifier<int> initialIndex = ValueNotifier<int>(0);
  final controller = CarouselController();
  ValueNotifier<int> itemQuantitiy = ValueNotifier(1);

  @override
  void initState() {
    context.read<DetailPageBloc>().add(GetProductDetail(widget.records.id!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorManager.primary,
        iconTheme: Theme.of(context)
            .appBarTheme
            .iconTheme
            ?.copyWith(color: ColorManager.white),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
              color: ColorManager.white,
            ),
        title: Text(widget.records.name ?? ""),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<DetailPageBloc, DetailPageState>(
            builder: (context, state) {
              if (state is ProductDetailLoaded) {
                List<String> images = [];
                images.add(
                  (state.productModel.image_1920.runtimeType == String)
                      ? state.productModel.image_1920 as String
                      : "",
                );
                if (state.productModel.listImage!.isNotEmpty) {
                  images = images + state.productModel.listImage!;
                }

                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // image slider-------------

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: state.productModel.name ?? "",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                CustomText(
                                  title: 'Rs. ${state.productModel.listPrice}',
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorManager.white,
                                border: Border.all(
                                    color: ColorManager.profileBg, width: 3),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                const SizedBox(height: AppSize.s16),
                                CarouselSlider(
                                  carouselController: controller,
                                  options: CarouselOptions(
                                      aspectRatio: 1.5,
                                      viewportFraction: 1,
                                      autoPlay: false,
                                      enableInfiniteScroll: false,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          initialIndex.value = index;
                                        });
                                      }),
                                  items: images
                                      .map(
                                        (image) => Builder(
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                context.pushNamed(
                                                    "interactive image page",
                                                    params: {
                                                      "position": initialIndex
                                                          .value
                                                          .toString()
                                                    },
                                                    extra: images);
                                              },
                                              child: SizedBox(
                                                  width: double.maxFinite,
                                                  child: Hero(
                                                    tag: widget.records.id
                                                        .toString(),
                                                    child: CustomCachedImage(
                                                      imageUrl: (image),
                                                      fit: BoxFit.contain,
                                                    ),
                                                  )),
                                            );
                                          },
                                        ),
                                      )
                                      .toList(),
                                ),
                                const SizedBox(height: AppSize.s16),
                                AnimatedSmoothIndicator(
                                    effect: ExpandingDotsEffect(
                                        dotWidth: 10,
                                        dotHeight: 8,
                                        activeDotColor: ColorManager.blackBtnBg,
                                        dotColor: ColorManager.lightGrey2),
                                    activeIndex: initialIndex.value,
                                    count: images.length),
                                const SizedBox(height: AppSize.s16),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: CustomText(
                              title: "Description",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          Html(
                            style: {
                              "body": Style(
                                fontSize: FontSize(16.0),
                              ),
                            },
                            data: (state.productModel.description.runtimeType ==
                                    String)
                                ? state.productModel.description as String
                                : "Description not available",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      const SizedBox(
                        height: 100,
                      )
                    ]);
              } else if (state is ProductDetailError) {
                return Text(state.errorMsg);
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        )),
      ),
      bottomSheet: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          if (state is CartUpdated) {
            context.read<CartBloc>().add(const GetUserCart());
            showSnackBar(context,
                message: state.successMsg,
                bgColor: ColorManager.secondaryGreen,
                actionLabelColor: ColorManager.white,
                actionLabel: "Go to cart", onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();

              context.read<BottomNavCubit>().changeBottomNavIndex(1);
              context.go(AppRoutes.landingPageRoute);
            });
          }
          if (state is CartUpdateError) {
            showSnackBar(context,
                message: state.errorMsg, bgColor: ColorManager.error);
          }
        },
        builder: (context, state) {
          if (state is CartLoaded) {
            if (state.result.result!.records!.isNotEmpty) {
              for (var item in state.result.result!.records!) {
                CartModel cartModel =
                    CartModel.fromJson(item as Map<String, dynamic>);
                if (cartModel.productId![0] as int == widget.records.id) {
                  itemQuantitiy.value =
                      (cartModel.totalQuantity as double).round();
                  return Container(
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: AppSize.s50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: ColorManager.grey1,
                            ),
                            borderRadius: BorderRadius.circular(AppSize.s28),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    itemQuantitiy.value =
                                        (itemQuantitiy.value >= 1)
                                            ? 1
                                            : itemQuantitiy.value - 1;
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: ColorManager.bbCategoryBg,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: ColorManager.textGrey,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                ValueListenableBuilder(
                                  valueListenable: itemQuantitiy,
                                  builder: (context, value, child) {
                                    return CustomText(
                                        title: value.toString(),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700);
                                  },
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    itemQuantitiy.value =
                                        itemQuantitiy.value + 1;
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: ColorManager.blackBtnBg,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.add,
                                      color: ColorManager.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSize.s70),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (BlocProvider.of<AuthCubit>(context).state ==
                                  const Authenticated()) {
                                context.read<CartBloc>().add(
                                    CartEvent.updateCart(CartRequestEntity(
                                        productId: widget.records.id!,
                                        quantity: itemQuantitiy.value)));
                              } else {
                                context.push(AppRoutes.loginPageRoute);
                              }
                            },
                            child: SizedBox(
                                height: AppSize.s55,
                                child: CustomBottom(
                                  text: "Update cart ",
                                  backgroundColor: ColorManager.blackBtnBg,
                                  radius: 10,
                                  textColor: ColorManager.white,
                                )),
                          ),
                        )
                      ],
                    ),
                  );
                }
              }
            }
          }
          return Container(
            decoration: BoxDecoration(
              color: ColorManager.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: AppSize.s50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: ColorManager.grey1,
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s28),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            itemQuantitiy.value = (itemQuantitiy.value >= 1)
                                ? 1
                                : itemQuantitiy.value - 1;
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: ColorManager.bbCategoryBg,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.remove,
                              size: 16,
                              color: ColorManager.textGrey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        ValueListenableBuilder(
                          valueListenable: itemQuantitiy,
                          builder: (context, value, child) {
                            return CustomText(
                                title: value.toString(),
                                fontSize: 14,
                                fontWeight: FontWeight.w700);
                          },
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            itemQuantitiy.value = itemQuantitiy.value + 1;
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: ColorManager.blackBtnBg,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.add,
                              color: ColorManager.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: AppSize.s70),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (BlocProvider.of<AuthCubit>(context).state ==
                          const Authenticated()) {
                        context.read<CartBloc>().add(CartEvent.addToCart(
                            CartRequestEntity(
                                productId: widget.records.id!,
                                quantity: itemQuantitiy.value)));
                      } else {
                        context.push(AppRoutes.loginPageRoute);
                      }
                    },
                    child: SizedBox(
                        height: AppSize.s55,
                        child: CustomBottom(
                          text: "Add to cart ",
                          backgroundColor: ColorManager.blackBtnBg,
                          radius: 10,
                          textColor: ColorManager.white,
                        )),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
