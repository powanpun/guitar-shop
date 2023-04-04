import 'package:flutter/material.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';

class RatingStar extends StatelessWidget {
  final int count;
  const RatingStar({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < count; i++) ...{
          Icon(
            Icons.star,
            color: ColorManager.secondaryYellow,
            size: 16,
          )
        },
        if (count < 5) ...{
          for (var i = count; i < 5; i++) ...{
            Icon(
              Icons.star,
              color: ColorManager.lightGrey3,
              size: 16,
            )
          },
        }
      ],
    );
  }
}
