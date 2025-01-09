import 'package:firebase/utils/keys/typography.dart';
import 'package:flutter/material.dart';

TextStyle textStyle({
  double fontSize = 16,
  FontWeight? fontWeight,
  String? fontFamily,
  Color? color,
}) =>
    TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: fontFamily ?? Typographys.regular,
      color: color ?? const Color(0xFF424242),
    );