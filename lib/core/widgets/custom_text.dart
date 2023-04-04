import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLine;
  final double? lineHeight;
  final TextOverflow? textOverflow;

  const CustomText({
    required this.title,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLine,
    this.lineHeight,
    this.textOverflow,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLine,
        overflow: textOverflow,
        style: GoogleFonts.lato(
          fontSize: fontSize ?? 16,
          color: color ?? ColorManager.textDark,
          fontWeight: fontWeight ?? FontWeight.w500,
          height: lineHeight,
        ));
  }
}
