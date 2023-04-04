import 'package:flutter/material.dart';

SizedBox customSizedBox({double? height, double? width}) {
  return SizedBox(
    height: height ?? 0,
    width: width ?? 0,
  );
}
