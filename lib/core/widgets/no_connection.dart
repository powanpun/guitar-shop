import 'package:flutter/material.dart';
import 'package:guitar_shop/core/manager/assets_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:lottie/lottie.dart';

class NoConnection extends StatelessWidget {
  const NoConnection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Center(
          child: SizedBox(
              height: 200,
              child: LottieBuilder.asset(AssetManager.noConnection)),
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomText(
          title: "No connection",
          fontSize: 20,
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
