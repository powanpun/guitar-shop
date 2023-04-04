import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';

class CustomBottom extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final double? padding;
  final double? radius;
  const CustomBottom({
    Key? key,
    required this.text,
    this.textColor,
    this.backgroundColor,
    this.fontSize,
    this.padding,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0))),
      padding: EdgeInsets.symmetric(vertical: padding ?? 16),
      width: double.infinity,
      child: Text(text,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontSize: fontSize ?? 16,
              fontWeight: FontWeight.w700,
              color: textColor ?? ColorManager.black)),
    );
  }
}
