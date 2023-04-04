import 'package:flutter/material.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:shimmer/shimmer.dart';

class HomepageCategoryShimmer extends StatelessWidget {
  const HomepageCategoryShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: ColorManager.profileBg,
                borderRadius: BorderRadius.circular(10)),
            width: 100,
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 7; i++)
                  Shimmer.fromColors(
                    baseColor: Colors.grey.shade200.withOpacity(0.4),
                    highlightColor: Colors.grey.shade200.withOpacity(0.2),
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                          color: ColorManager.profileBg,
                          borderRadius: BorderRadius.circular(10)),
                      height: 200,
                      width: 200,
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
