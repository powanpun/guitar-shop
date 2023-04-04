import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/bloc/featured_products_bloc.dart';

class HomepageFeaturedProduct extends StatefulWidget {
  const HomepageFeaturedProduct({super.key});

  @override
  State<HomepageFeaturedProduct> createState() =>
      _HomepageFeaturedProductState();
}

class _HomepageFeaturedProductState extends State<HomepageFeaturedProduct> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedProductsBloc, FeaturedProductsState>(
      builder: (context, state) {
        if (state is FeaturedProductLoaded) {
          return Container(
            decoration: BoxDecoration(
                color: ColorManager.searchFieldColor,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomText(
                    title: "Featured Products",
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: MasonryGridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    itemCount: state.result.result!.records!.length,
                    itemBuilder: (context, index) {
                      BaseResultRecord record = BaseResultRecord.fromJson(state
                          .result
                          .result!
                          .records![index] as Map<String, dynamic>);
                      // print(record.name);
                      return Text(record.name!);

                      // FeaturedProductItems(
                      //   records: state.result.result!.records![index]
                      //       ,
                      // );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        }
        if (state is FeaturedProductError) {
          return Text(state.errorMsg);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
