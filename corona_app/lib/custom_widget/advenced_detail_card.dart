import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvancedDetailCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String newConfirmed;
  final String totalConfirmed;
  final String newDeath;
  final String totalDeath;
  final String newRecovered;
  final String totalRecovered;
  final bool navigated;

  AdvancedDetailCard({
    @required this.title,
    @required this.newConfirmed,
    @required this.totalConfirmed,
    @required this.newDeath,
    @required this.totalDeath,
    @required this.newRecovered,
    @required this.totalRecovered,
    this.subtitle,
    this.date,
    this.navigated = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: navigated
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: <Widget>[
                navigated
                    ? Text(
                        this.title ?? '',
                        style: Theme.of(context).textTheme.headline,
                      )
                    : Text(
                        this.title ?? '',
                        style: Theme.of(context).textTheme.title,
                      ),
                this.subtitle != null
                    ? Text(
                        '(' + this.subtitle + ')',
                        style: Theme.of(context).textTheme.caption,
                      )
                    : Text(''),
              ],
            ),
          ),
          this.date != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Latest Update: ',
                      style: Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      this.date.substring(0, 10) + ' ',
                      style: Theme.of(context).textTheme.caption,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      this.date.substring(11, 19),
                      style: Theme.of(context).textTheme.caption,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      '(GMT)',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                )
              : SizedBox(),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Infected:',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            commaFormatter(this.newConfirmed) ?? '',
                            style: Theme.of(context).textTheme.title.copyWith(
                                  color: Colors.orangeAccent,
                                ),
                          ),
                          Text(
                            '(New)',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      SizedBox(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            commaFormatter(this.totalConfirmed) ?? '',
                            style: Theme.of(context).textTheme.title.copyWith(
                                  color: Colors.orange,
                                ),
                          ),
                          Text(
                            '(Total)',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'Deaths:',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            commaFormatter(this.newDeath) ?? '',
                            style: Theme.of(context).textTheme.title.copyWith(
                                  color: Colors.redAccent,
                                ),
                          ),
                          Text(
                            '(New)',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      SizedBox(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            commaFormatter(this.totalDeath) ?? '',
                            style: Theme.of(context).textTheme.title.copyWith(
                                  color: Colors.red,
                                ),
                          ),
                          Text(
                            '(Total)',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'Recovered:',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            commaFormatter(this.newRecovered) ?? '',
                            style: Theme.of(context).textTheme.title.copyWith(
                                  color: Colors.lightGreen,
                                ),
                          ),
                          Text(
                            '(New)',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      SizedBox(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            commaFormatter(this.totalRecovered) ?? '',
                            style: Theme.of(context).textTheme.title.copyWith(
                                  color: Colors.green,
                                ),
                          ),
                          Text(
                            '(Total)',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String commaFormatter(String x) {
    return x.replaceAllMapped(
        new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}
