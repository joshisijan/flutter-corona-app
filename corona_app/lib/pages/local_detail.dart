import 'package:corona_app/custom_widget/advenced_detail_card.dart';
import 'package:flutter/material.dart';


class LocalDetail extends ModalRoute<void> {

  final String title;
  final String subtitle;
  final String date;
  final String newConfirmed;
  final String totalConfirmed;
  final String newDeath;
  final String totalDeath;
  final String newRecovered;
  final String totalRecovered;

  LocalDetail({
    @required this.title,
    @required this.newConfirmed,
    @required this.totalConfirmed,
    @required this.newDeath,
    @required this.totalDeath,
    @required this.newRecovered,
    @required this.totalRecovered,
    this.subtitle,
    this.date,
  });

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
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).padding.top + 50 + 20,
                ),
                AdvancedDetailCard(
                  title: this.title ?? '',
                  totalRecovered: this.totalRecovered ?? '',
                  totalDeath: this.totalDeath ?? '',
                  newRecovered: this.newRecovered ?? '',
                  newDeath: this.newDeath ?? '',
                  newConfirmed: this.newConfirmed ?? '',
                  totalConfirmed: this.totalConfirmed ?? '',
                  subtitle: this.subtitle,
                  date: this.date ?? '',
                  navigated: true,
                ),
                SizedBox(
                  height: 30.0,
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
