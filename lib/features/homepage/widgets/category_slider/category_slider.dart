import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/core/widgets/homepage/homepage_category_shimmer.dart';
import 'package:guitar_shop/features/homepage/item_widgets/category_item.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/bloc/product_category_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/entitiies/category_model.dart';

class HomepagecategorySlider extends StatelessWidget {
  const HomepagecategorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCategoryBloc, ProductCategoryState>(
      builder: (context, state) {
        if (state is CategoryLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomText(
                  title: "Categories",
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: state.result.result!.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(right: 16),
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      CategoryModel categories = CategoryModel.fromJson(state
                          .result
                          .result!
                          .records![index] as Map<String, dynamic>);
                      return SizedBox(
                          width: 150, child: CategoryItem(records: categories));
                    }),
              )
            ],
          );
        }
        if (state is CategoryLoading) {
          return const HomepageCategoryShimmer();
        }
        if (state is CategoryError) {
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
