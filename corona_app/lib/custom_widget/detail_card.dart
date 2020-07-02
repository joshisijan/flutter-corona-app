import 'package:corona_app/pages/local_detail.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String title;
  final String update;
  final String infected;
  final String recovered;
  final String deaths;
  final String country;
  final String newInfected;
  final String newDeaths;
  final String newRecovered;

  const DetailCard({
    @required this.title,
    this.update,
    @required this.infected,
    @required this.recovered,
    @required this.deaths,
    this.country,
    this.newInfected,
    this.newDeaths,
    this.newRecovered,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                this.title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                this.country != null ? '(' + this.country + ')' : '',
                style: Theme.of(context).textTheme.subtitle.copyWith(
                      color: Theme.of(context).textTheme.caption.color,
                    ),
              ),
            ],
          ),
          this.update != null
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
                      this.update.substring(0, 10) + ' ',
                      style: Theme.of(context).textTheme.caption,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      this.update.substring(11, 19),
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
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: 28.0,
                                height: 28.0,
                                decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 15.0,
                                height: 15.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.orange,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 9.0,
                                height: 9.0,
                                decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        commaFormatter(this.infected),
                        style: Theme.of(context).textTheme.headline.copyWith(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Infected',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: 28.0,
                                height: 28.0,
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 15.0,
                                height: 15.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 9.0,
                                height: 9.0,
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        commaFormatter(this.deaths),
                        style: Theme.of(context).textTheme.headline.copyWith(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Deaths',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: 28.0,
                                height: 28.0,
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 15.0,
                                height: 15.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 9.0,
                                height: 9.0,
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        commaFormatter(this.recovered),
                        style: Theme.of(context).textTheme.headline.copyWith(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Recovered',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: MaterialButton(
              textColor: Colors.red,
              child: Text('View Detail'),
              onPressed: () {
                Navigator.push(
                    context,
                    LocalDetail(
                      title: this.country ?? '',
                      date: this.update,
                      totalDeath: this.deaths ?? '',
                      totalConfirmed: this.infected ?? '',
                      totalRecovered: this.recovered ?? '',
                      newConfirmed: this.newInfected ?? '',
                      newDeath: this.newDeaths ?? '',
                      newRecovered: this.newRecovered ?? '',
                    ));
              },
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
