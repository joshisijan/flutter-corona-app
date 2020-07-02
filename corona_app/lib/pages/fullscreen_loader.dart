import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FullscreenLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(
          animating: true,
        ),
      ),
    );
  }
}
