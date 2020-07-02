import 'package:corona_app/theme/colors.dart';
import 'package:flutter/material.dart';


ThemeData kLightTheme = ThemeData.light().copyWith(
  primaryColor: kPrimaryBlue,
  textTheme: kLightTextTheme,
  iconTheme: IconThemeData(
    color:
      kTextWhite,
  ),
  appBarTheme: AppBarTheme(
    textTheme: kLightTextTheme.copyWith(
      title: TextStyle(
        fontSize: 18,
      ),
    ),
  ),
);

TextTheme kLightTextTheme = TextTheme(
  title: TextStyle(
    color: kTextWhite,
  ),
  body1: TextStyle(
    color: kTextWhite,
  ),
  body2: TextStyle(
    color: kTextWhite,
  ),
  button: TextStyle(
    color: kTextWhite,
  ),
  caption: TextStyle(
    color: kTextWhite,
  ),
  display1: TextStyle(
    color: kTextWhite,
  ),
  display2: TextStyle(
    color: kTextWhite,
  ),
  display3: TextStyle(
    color: kTextWhite,
  ),
  display4: TextStyle(
    color: kTextWhite,
  ),
  headline: TextStyle(
    color: kTextWhite,
  ),
  overline: TextStyle(
    color: kTextWhite,
  ),
  subhead: TextStyle(
    color: kTextWhite,
  ),
  subtitle: TextStyle(
    color: kTextWhite,
  ),
);