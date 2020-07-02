import 'package:flutter/material.dart';


class DataFetchError extends StatelessWidget {

  final String error;

  DataFetchError({this.error = 'Couldn\'t get data. Try again.'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(this.error),
      ),
    );
  }
}
