import 'package:flutter/material.dart';
import 'package:guitar_shop/core/manager/assets_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      width: 86,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                border:
                    Border.all(color: ColorManager.brandItemBorder, width: 1)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                AssetManager.item,
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const CustomText(
            title: "Title",
            textAlign: TextAlign.center,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
