import 'package:corona_app/theme/colors.dart';
import 'package:flutter/material.dart';


class MainMenu extends ModalRoute<void> {

  @override
  // TODO: implement barrierColor
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  // TODO: implement barrierDismissible
  bool get barrierDismissible => false;

  @override
  // TODO: implement barrierLabel
  String get barrierLabel => null;

  @override
  // TODO: implement maintainState
  bool get maintainState => true;

  @override
  // TODO: implement opaque
  bool get opaque => false;

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => Duration(milliseconds: 250);

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }

  @override
  Widget buildPage(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    return Container(
      child: Scaffold(
        backgroundColor: kPrimaryBlue,
        body: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RawMaterialButton(
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.title.fontSize,
                    ),
                  ),
                  onPressed: () {

                  },
                ),
                RawMaterialButton(
                  child: Text(
                    'About us',
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.title.fontSize,
                    ),
                  ),
                  onPressed: () {

                  },
                ),
              ],
            ),
            Positioned(
              top: 50,
              right: 20,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}
