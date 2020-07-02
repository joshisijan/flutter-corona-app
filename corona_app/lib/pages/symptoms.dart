import 'package:flutter/material.dart';



class SymptomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Container(
       child: ListView(
         children: <Widget>[
           ListTile(
             title: Text('1. Cougning'),
           ),
         ],
       ),
      ),
    );
  }
}
