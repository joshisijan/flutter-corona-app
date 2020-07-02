import 'dart:convert';

import 'package:corona_app/custom_pluging/main_row_menu.dart';
import 'package:corona_app/pages/global_stats.dart';
import 'package:corona_app/pages/local_stats.dart';
import 'package:corona_app/pages/main_menu.dart';
import 'package:corona_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class MainBase extends StatelessWidget {
  final String date = DateFormat('EEE,d MMM yyyy').format(DateTime.now());

  final String summaryUrl = 'https://api.covid19api.com/summary';
  final String countryUrl = 'https://api.covid19api.com/summary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).textTheme.title.color,
            ),
            onPressed: () {
              Navigator.push(context, MainMenu());
            },
          ),
          title: Text('MENU'),
          onTap: () {
            Navigator.push(context, MainMenu());
          },
        ),
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.calendar_today),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    date.toString(),
                    style: Theme.of(context).textTheme.title.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          StreamBuilder(
            stream: http.get(countryUrl).asStream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return MainRowMenu(
                  bg: kLightBlue,
                  title: 'NEPAL',
                  total: ' Loading...',
                  death: ' Loading...',
                  recovered: ' Loading...',
                  icon: Icons.location_on,
                  click: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => LocalStats(),
                    ));
                  },
                );
              } else {
                if (snapshot.data == null) {
                  return MainRowMenu(
                    bg: kLightBlue,
                    title: 'NEPAL',
                    total: ' Loading...',
                    death: ' Loading...',
                    recovered: ' Loading...',
                    icon: Icons.location_on,
                    click: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LocalStats(),
                      ));
                    },
                  );
                } else {
                  var data = snapshot.data.body;
                  var jsonData = jsonDecode(data);
                  return MainRowMenu(
                    bg: kLightBlue,
                    title: 'NEPAL',
                    total: jsonData['Countries'][154]['TotalConfirmed']
                            .toString() ??
                        '(...)',
                    death:
                        jsonData['Countries'][154]['TotalDeaths'].toString() ??
                            '(...)',
                    recovered: jsonData['Countries'][154]['TotalRecovered']
                            .toString() ??
                        '(...)',
                    icon: Icons.location_on,
                    click: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LocalStats(),
                      ));
                    },
                  );
                }
              }
            },
          ),
          StreamBuilder(
            stream: http.get(summaryUrl).asStream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return MainRowMenu(
                  bg: kDarkBlue,
                  title: 'GLOBAL',
                  total: ' Loading...',
                  death: ' Loading...',
                  recovered: ' Loading...',
                  icon: Icons.explore,
                  click: () {},
                );
              } else {
                if (snapshot.data == null) {
                  return MainRowMenu(
                    bg: kDarkBlue,
                    title: 'GLOBAL',
                    total: ' Loading...',
                    death: ' Loading...',
                    recovered: ' Loading...',
                    icon: Icons.explore,
                    click: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => GlobalStats(),
                      ));
                    },
                  );
                } else {
                  var data = snapshot.data.body;
                  var jsonData = jsonDecode(data);
                  return MainRowMenu(
                    bg: kDarkBlue,
                    title: 'GLOBAL',
                    total: jsonData['Global']['TotalConfirmed'].toString() ??
                        '(...)',
                    death:
                        jsonData['Global']['TotalDeaths'].toString() ?? '(...)',
                    recovered:
                        jsonData['Global']['TotalRecovered'].toString() ??
                            '(...)',
                    icon: Icons.explore,
                    click: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => GlobalStats(),
                      ));
                    },
                  );
                }
              }
            },
          ),
          MainRowMenu(
            bg: kLightPurple,
            title: 'NEWS',
            subtitle: 'NEWS about COVID-19',
            icon: Icons.chrome_reader_mode,
            click: () {},
          ),
          MainRowMenu(
            bg: kDarkPurple,
            title: 'Myths',
            subtitle: 'Myths regarding COVID-19.',
            icon: Icons.help,
            click: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => GlobalStats(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
