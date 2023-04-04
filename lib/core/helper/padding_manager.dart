import 'package:flutter/material.dart';

EdgeInsets paddingAll(double value) => EdgeInsets.all(value);
EdgeInsets paddingSymmetric(double horizontal, double vertical) =>
    EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
EdgeInsets paddingLTRB(double left, double top, double right, double bottom) =>
    EdgeInsets.fromLTRB(left, top, right, bottom);
