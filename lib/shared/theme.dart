import 'package:flutter/material.dart';

const double defaultMargin = 24;

Color primaryColor = const Color(0xFFEE6044);
Color purpleColor = const Color(0xFF5F3CF6);
Color bodyBackgroundColor = const Color(0xFFF1F3F7);
Color whiteColor = const Color(0xFFFFFFFF);
Color greyColor = const Color(0xFFE4E7EC);
Color contentGreyColor = const Color(0xFF8E9BA9);
Color blackColor = const Color(0xFF000000);

FontWeight light = FontWeight.w300;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

TextStyle titleTextStyle = TextStyle(
  color: blackColor,
  fontSize: 18,
  fontWeight: semiBold,
);

TextStyle subtitleTextStyle = TextStyle(
  color: blackColor,
  fontSize: 16,
  fontWeight: medium,
);

TextStyle contentTextStyle = TextStyle(
  color: contentGreyColor,
  fontSize: 12,
);

TextStyle greyTextStyle = TextStyle(
  color: greyColor,
  fontSize: 12,
);

TextStyle orangeTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 12,
  fontWeight: semiBold,
);

TextStyle whiteTextStyle = TextStyle(
  color: whiteColor,
  fontWeight: semiBold,
  fontSize: 8,
);
