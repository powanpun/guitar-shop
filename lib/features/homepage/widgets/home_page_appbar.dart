import 'package:flutter/material.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: InkWell(
        onTap: () {
          // context.push(AppRoutes.googleMapPage, extra: position);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
                title: TextManager.appTitle,
                color: ColorManager.white,
                fontSize: 20,
                fontWeight: FontWeight.w800),
            const SizedBox(width: AppSize.s30),
            // Icon(
            //   Icons.notifications_outlined,
            //   size: AppSize.s24,
            //   color: ColorManager.white,
            // ),
          ],
        ),
      ),
    );
  }
}
