import 'dart:convert';

import 'package:corona_app/home_base.dart';
import 'package:corona_app/pages/data_fetch_error.dart';
import 'package:corona_app/pages/fullscreen_loader.dart';
import 'package:corona_app/pages/symptoms.dart';
import 'package:corona_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
//  runApp(AppBase());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SymptomsPage(),
  ));
}


class AppBase extends StatelessWidget {

  final String summaryUrl = 'https://api.covid19api.com/summary';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'corona app v1.1',
      debugShowCheckedModeBanner: false,
      theme: kCustomLightTheme,
      darkTheme: kCustomDarkTheme,
      home: StreamBuilder(
        stream: http.get(summaryUrl).asStream(),
        builder: (_,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return FullscreenLoader();
          }else if(snapshot.hasError){
            return DataFetchError(
              error: snapshot.error.toString(),
            );
          }else{
            if(snapshot.data != null){
              if(snapshot.data.statusCode != 200){
                return DataFetchError();
              }else{
                var data = snapshot.data.body;
                var jsonData = jsonDecode(data);
                return HomeBase(
                  jsonData: jsonData,
                );
              }
            }else{
              return DataFetchError();
            }
          }
        },
      ),
    );
  }
}
