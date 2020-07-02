import 'package:corona_app/custom_widget/advenced_detail_card.dart';
import 'package:corona_app/custom_widget/bottom_oval_clip.dart';
import 'package:corona_app/custom_widget/detail_card.dart';
import 'package:flutter/material.dart';



class HomeListView extends StatefulWidget {

  final Map<String, dynamic> jsonData;

  HomeListView({
    this.jsonData,
  });

  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {


  int selectedIndex = 153;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 0),
      children: <Widget>[
        ClipPath(
          child: Container(
            height: 150,
            color:
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? ThemeData.light().primaryColor
                : ThemeData.dark().cardColor,
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).padding.top,
              horizontal: 20.0,
            ),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Text(
                    'JUST STAY HOME',
                    style: Theme.of(context).textTheme.title.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          clipper: BottomOvalClip(),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).textTheme.caption.color.withAlpha(75),
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              style: TextStyle(
                color: Theme.of(context).textTheme.caption.color,
              ),
              onChanged: (item) {
                setState(() {
                  this.selectedIndex = item;
                });
              },
              value: this.selectedIndex,
              isExpanded: true,
              items: List.generate(this.widget.jsonData['Countries'].length,
                      (index) {
                    return DropdownMenuItem(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Theme.of(context).textTheme.caption.color,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(this
                              .widget
                              .jsonData['Countries'][index]['Country']
                              .toString()),
                        ],
                      ),
                      value: index,
                    );
                  }),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        DetailCard(
          title: 'Local',
          newRecovered: this
              .widget
              .jsonData['Countries'][this.selectedIndex]['NewRecovered']
              .toString(),
          newDeaths: this
              .widget
              .jsonData['Countries'][this.selectedIndex]['NewDeaths']
              .toString(),
          newInfected: this
              .widget
              .jsonData['Countries'][this.selectedIndex]['NewConfirmed']
              .toString(),
          update: this
              .widget
              .jsonData['Countries'][this.selectedIndex]['Date']
              .toString(),
          recovered: this
              .widget
              .jsonData['Countries'][this.selectedIndex]['TotalRecovered']
              .toString(),
          deaths: this
              .widget
              .jsonData['Countries'][this.selectedIndex]['TotalDeaths']
              .toString(),
          infected: this
              .widget
              .jsonData['Countries'][this.selectedIndex]['TotalConfirmed']
              .toString(),
          country: this.widget.jsonData['Countries'][this.selectedIndex]
          ['Country'],
        ),
        AdvancedDetailCard(
          title: 'Global Data',
          newConfirmed:
          this.widget.jsonData['Global']['NewConfirmed'].toString(),
          newDeath: this.widget.jsonData['Global']['NewDeaths'].toString(),
          newRecovered:
          this.widget.jsonData['Global']['NewRecovered'].toString(),
          totalConfirmed:
          this.widget.jsonData['Global']['TotalConfirmed'].toString(),
          totalDeath:
          this.widget.jsonData['Global']['TotalDeaths'].toString(),
          totalRecovered:
          this.widget.jsonData['Global']['TotalRecovered'].toString(),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}


