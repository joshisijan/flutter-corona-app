import 'package:flutter/material.dart';


ThemeData kCustomLightTheme = ThemeData.light().copyWith(
  textTheme: kLightTextTheme,
);

ThemeData kCustomDarkTheme = ThemeData.dark().copyWith(
  textTheme: kDarkTextTheme,
);


TextTheme kLightTextTheme = ThemeData.light().textTheme.copyWith(
  title: ThemeData.light().textTheme.title.copyWith(
    fontFamily: 'Baloo',
  ),
  body1: ThemeData.light().textTheme.body1.copyWith(
    fontFamily: 'Baloo',
  ),
  body2: ThemeData.light().textTheme.body2.copyWith(
    fontFamily: 'Baloo',
  ),
  button: ThemeData.light().textTheme.button.copyWith(
    fontFamily: 'Baloo',
  ),
  caption: ThemeData.light().textTheme.caption.copyWith(
    fontFamily: 'Baloo',
  ),
  display1: ThemeData.light().textTheme.display1.copyWith(
    fontFamily: 'Baloo',
  ),
  display2: ThemeData.light().textTheme.display2.copyWith(
    fontFamily: 'Baloo',
  ),
  display3: ThemeData.light().textTheme.display3.copyWith(
    fontFamily: 'Baloo',
  ),
  display4: ThemeData.light().textTheme.display4.copyWith(
    fontFamily: 'Baloo',
  ),
  headline: ThemeData.light().textTheme.headline.copyWith(
    fontFamily: 'Baloo',
  ),
  overline: ThemeData.light().textTheme.overline.copyWith(
    fontFamily: 'Baloo',
  ),
  subhead: ThemeData.light().textTheme.subhead.copyWith(
    fontFamily: 'Baloo',
  ),
  subtitle: ThemeData.light().textTheme.subtitle.copyWith(
    fontFamily: 'Baloo',
  ),
);


TextTheme kDarkTextTheme = ThemeData.light().textTheme.copyWith(
  title: ThemeData.dark().textTheme.title.copyWith(
    fontFamily: 'Baloo',
  ),
  body1: ThemeData.dark().textTheme.body1.copyWith(
    fontFamily: 'Baloo',
  ),
  body2: ThemeData.dark().textTheme.body2.copyWith(
    fontFamily: 'Baloo',
  ),
  button: ThemeData.dark().textTheme.button.copyWith(
    fontFamily: 'Baloo',
  ),
  caption: ThemeData.dark().textTheme.caption.copyWith(
    fontFamily: 'Baloo',
  ),
  display1: ThemeData.dark().textTheme.display1.copyWith(
    fontFamily: 'Baloo',
  ),
  display2: ThemeData.dark().textTheme.display2.copyWith(
    fontFamily: 'Baloo',
  ),
  display3: ThemeData.dark().textTheme.display3.copyWith(
    fontFamily: 'Baloo',
  ),
  display4: ThemeData.dark().textTheme.display4.copyWith(
    fontFamily: 'Baloo',
  ),
  headline: ThemeData.dark().textTheme.headline.copyWith(
    fontFamily: 'Baloo',
  ),
  overline: ThemeData.dark().textTheme.overline.copyWith(
    fontFamily: 'Baloo',
  ),
  subhead: ThemeData.dark().textTheme.subhead.copyWith(
    fontFamily: 'Baloo',
  ),
  subtitle: ThemeData.dark().textTheme.subtitle.copyWith(
    fontFamily: 'Baloo',
  ),
);