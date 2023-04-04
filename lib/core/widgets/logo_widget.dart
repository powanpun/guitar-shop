import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guitar_shop/core/manager/assets_manager.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetManager.svgLogo,
    );
  }
}
