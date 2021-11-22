import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const robotoTextStyle = TextStyle(
    fontFamily: 'Roboto',
    color: Colors.black,
  );

  static final largeTitleStyle = robotoTextStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 32,
  );

  static final titleStyle = robotoTextStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  static final subtitleStyle = robotoTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static final textStyle = robotoTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static final smallBoldStyle = robotoTextStyle.copyWith(
    fontWeight: FontWeight.w700,
  );

  static final buttonTextStyle = robotoTextStyle.copyWith(
    fontWeight: FontWeight.w700,
    letterSpacing: 0.03,
  );
}
