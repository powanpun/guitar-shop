import 'package:flutter/material.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_category/featured_categories_list/featured_category_item_detail/featured_category_item_detail.dart';

class FeaturedCategoryList extends StatefulWidget {
  final List<num> categoryIds;
  const FeaturedCategoryList({super.key, required this.categoryIds});

  @override
  State<FeaturedCategoryList> createState() => _FeaturedCategoryListState();
}

class _FeaturedCategoryListState extends State<FeaturedCategoryList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.categoryIds.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          return SizedBox(
            width: 150,
            child: FeaturedCategoryItemDetail(
              itemId: widget.categoryIds[index] as int,
              homepageRepository: HomepageRepository(),
            ),
          );
        },
      ),
    );
  }
}
