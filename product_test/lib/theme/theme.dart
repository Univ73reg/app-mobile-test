import 'package:flutter/material.dart';
import 'package:product_test/theme/constants.dart';

// ignore: non_constant_identifier_names
ThemeData TestTheme() => ThemeData(
      textTheme: TextTheme(
        headline1: TextStyle(
          fontFamily: FontNameTitle,
          fontSize: HeaderSize,
          color: appBarTitleColor,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontFamily: FontNameTitle,
          fontSize: MediumTextSize,
          fontWeight: FontWeight.w800,
          color: textColor,
        ),
        headline5: TextStyle(
          fontFamily: FontNameTitle,
          fontSize: CategoryListItemSize,
          //fontWeight: FontWeight.w800,
          color: categoryListItemColor,
        ),
        headline6: TextStyle(
          fontFamily: FontNameTitle,
          fontSize: AppBarTitleSize,
          color: appBarTitleColor,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
          fontFamily: FontNameTitle,
          fontSize: BodyTextSize,
          color: bodyTextColor,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontFamily: FontNameTitle,
          fontSize: BodyTextSize,
          color: bodyTextColor2,
          fontWeight: FontWeight.w400,
        ),
      ),
      iconTheme: IconThemeData(
        size: 24.0,
        opacity: 1,
        color: Color(0xFFDB3022),
      ),
    );
