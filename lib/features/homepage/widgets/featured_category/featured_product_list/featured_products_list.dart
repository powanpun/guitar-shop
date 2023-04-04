import 'package:flutter/material.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_category/featured_product_list/featured_item_detail/featured_item_detail.dart';

class FeaturedProductList extends StatefulWidget {
  final List<num> productIds;
  const FeaturedProductList({super.key, required this.productIds});

  @override
  State<FeaturedProductList> createState() => _FeaturedProductListState();
}

class _FeaturedProductListState extends State<FeaturedProductList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.productIds.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(right: 10),
            width: 150,
            child: FeaturedItemDetail(
              itemId: widget.productIds[index] as int,
              homepageRepository: HomepageRepository(),
            ),
          );
        },
      ),
    );
  }
}
