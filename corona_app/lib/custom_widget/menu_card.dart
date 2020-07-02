import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final IconData icon;
  final Function click;
  final String title;
  final Color iconColor;
  final Color titleColor;

  const MenuCard({
    @required this.icon,
    @required this.click,
    @required this.title,
    this.iconColor,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: RawMaterialButton(
        onPressed: this.click,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(
                  this.icon,
                  color: this.iconColor,
                  size: 50.0,
                ),
                Text(
                  this.title,
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: this.titleColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
