import 'package:flutter/material.dart';

const TextStyle kRobotoTextStyle = TextStyle(
  fontFamily: 'Roboto',
  color: Colors.black,
);

final TextStyle kLargeTitleStyle = kRobotoTextStyle.copyWith(
  fontWeight: FontWeight.w700,
  fontSize: 32,
);

final TextStyle kTitleStyle = kRobotoTextStyle.copyWith(
  fontWeight: FontWeight.w700,
  fontSize: 24,
);

final TextStyle kSubtitleStyle = kRobotoTextStyle.copyWith(
  fontWeight: FontWeight.w500,
  fontSize: 18,
);

final TextStyle kTextStyle = kRobotoTextStyle.copyWith(
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

final TextStyle kSmallBoldStyle = kRobotoTextStyle.copyWith(
  fontWeight: FontWeight.w700,
);

final TextStyle kButtonTextStyle = kRobotoTextStyle.copyWith(
  fontWeight: FontWeight.w700,
  letterSpacing: 0.03,
);
