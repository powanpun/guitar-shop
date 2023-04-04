import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/cached_network_image.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/detail_page/bloc/detail_page_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/entitiies/category_model.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';
import 'package:guitar_shop/features/homepage/widgets/slider/bloc/slider_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/widgets/homepage/homepage_slider_shimmer.dart';

class HomepageSlider extends StatefulWidget {
  const HomepageSlider({super.key});

  @override
  State<HomepageSlider> createState() => _HomepageSliderState();
}

class _HomepageSliderState extends State<HomepageSlider> {
  final ValueNotifier<int> initialIndex = ValueNotifier<int>(0);
  final controller = CarouselController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderBloc, SliderState>(
      builder: (context, state) {
        if (state is Loaded) {
          return Column(
            children: [
              CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                    height: 180,
                    padEnds: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.85,
                    enableInfiniteScroll: true,
                    autoPlayInterval: const Duration(seconds: 6),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        initialIndex.value = index;
                      });
                    }),
                items: state.result
                    .map(
                      (banner) => Builder(
                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              if (banner.clickAction != "none") {
                                if (banner.clickAction == "product") {
                                  context
                                      .read<DetailPageBloc>()
                                      .add(const ResetGetProductDetail());
                                  List<dynamic> items =
                                      banner.productId as List<dynamic>;
                                  context.push(AppRoutes.detailPageRoute,
                                      extra: ProductModel(
                                        id: items[0] as int,
                                        name: items[1] as String,
                                      ));
                                }
                                if (banner.clickAction == "product_category") {
                                  List<dynamic> items =
                                      banner.categoryId as List<dynamic>;
                                  context.push(AppRoutes.itemByCatePageRoute,
                                      extra: CategoryModel(
                                        id: items[0] as int,
                                        name: items[1] as String,
                                      ));
                                }
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppSize.s10),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppSize.s10),
                                child: CustomCachedImage(
                                  imageUrl: banner.image!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
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
                  count: state.result.length),
            ],
          );
        }
        if (state is Loading) {
          return const HomepageSliderShimmer();
        }
        if (state is Error) {
          return Center(
            child: CustomText(
              title: state.errorMsg,
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
