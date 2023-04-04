import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/core/widgets/homepage/homepage_category_shimmer.dart';
import 'package:guitar_shop/data_layer/model/result/result_model.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_category/bloc/featured_category_list_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_category/featured_categories_list/featured_categories_list.dart';

import 'featured_product_list/featured_products_list.dart';

class FeaturedMenuList extends StatefulWidget {
  const FeaturedMenuList({super.key});

  @override
  State<FeaturedMenuList> createState() => _FeaturedMenuListState();
}

class _FeaturedMenuListState extends State<FeaturedMenuList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCategoryListBloc, FeaturedCategoryListState>(
      builder: (context, state) {
        if (state is FeaturedCategoryLoaded) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.result.result!.length,
            itemBuilder: (context, index) {
              ResultRecord data = state.result.result!.records![index];

              if (data.itemType == "product") {
                return Container(
                  decoration: BoxDecoration(
                      color: ColorManager.profileBg,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomText(
                          title: data.name!,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FeaturedProductList(
                        productIds: data.lineIds!,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );
              }
              if (data.itemType == "product_category") {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: CustomText(
                        title: data.name!,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    FeaturedCategoryList(
                      categoryIds: data.lineIds!,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          );
        }
        if (state is FeaturedCategoryError) {
          return Text(state.errorMsg);
        } else {
          return const HomepageCategoryShimmer();
        }
      },
    );
  }
}
