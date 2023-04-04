import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:shimmer/shimmer.dart';

class HomepageSliderShimmer extends StatelessWidget {
  const HomepageSliderShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 180,
          padEnds: true,
          enlargeCenterPage: true,
          viewportFraction: 0.85,
          enableInfiniteScroll: true,
          autoPlayInterval: const Duration(seconds: 6),
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlay: false,
          onPageChanged: (index, reason) {}),
      items: [
        Shimmer.fromColors(
          baseColor: Colors.grey.shade200.withOpacity(0.4),
          highlightColor: Colors.grey.shade200.withOpacity(0.2),
          child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(10)),
                height: double.infinity,
                width: double.infinity,
              )),
        )
      ],
    );
  }
}
