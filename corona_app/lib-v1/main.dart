import 'package:corona_app/main_base.dart';
import 'package:corona_app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppBase());

class AppBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kLightTheme,
      home: Container(
        child: MainBase(),
      ),
    );
  }
}
