import 'package:corona_app/theme/colors.dart';
import 'package:flutter/material.dart';

class LocalStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: kLightBlue,
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'NEPAL',
                  style: Theme.of(context).textTheme.title,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Text('Local'),
      ),
    );
  }
}
