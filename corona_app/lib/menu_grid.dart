import 'package:corona_app/custom_widget/menu_card.dart';
import 'package:corona_app/pages/myths.dart';
import 'package:corona_app/pages/symptoms.dart';
import 'package:flutter/material.dart';



class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        MenuCard(
          icon: Icons.local_hospital,
          title: 'Symptoms',
          click: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SymptomsPage(),
            ));
          },
        ),
        MenuCard(
          icon: Icons.details,
          title: 'Myths',
          click: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => MythsPage(),
            ));
          },
        ),
        MenuCard(
          icon: Icons.help,
          title: 'About us',
          click: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SymptomsPage(),
            ));
          },
        ),
      ],
    );
  }
}
