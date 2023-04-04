import 'package:flutter/material.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/homepage/item_widgets/brand_item.dart';

class HomepageBrands extends StatefulWidget {
  const HomepageBrands({super.key});

  @override
  State<HomepageBrands> createState() => _HomepageBrandsState();
}

class _HomepageBrandsState extends State<HomepageBrands> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomText(
            title: "Our Brands",
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return const BrandItem();
              }),
        )
      ],
    );
  }
}
