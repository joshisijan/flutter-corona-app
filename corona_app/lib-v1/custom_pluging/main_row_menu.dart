import 'package:corona_app/theme/colors.dart';
import 'package:flutter/material.dart';

class MainRowMenu extends StatelessWidget {
  final Color bg;
  final String title;
  final String subtitle;
  final String total;
  final String death;
  final String recovered;
  final Function click;
  final IconData icon;

  MainRowMenu({
    this.bg,
    @required this.title,
    this.subtitle,
    this.total,
    this.death,
    this.recovered,
    @required this.click,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: this.click,
        child: Container(
          color: this.bg,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 40.0,
              ),
              Icon(
                this.icon,
                size: 50.0,
              ),
              SizedBox(
                width: 40.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.title ?? 'Title',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    this.subtitle != null
                        ? Text(
                      this.subtitle,
                      style:  Theme.of(context).textTheme.caption,
                    )
                        : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Total: ' + (this.total ?? '(...)'),
                          style:  Theme.of(context).textTheme.subtitle,
                        ),
                        Text(
                          'Recovered: ' + (this.recovered ?? '(...)'),
                          style:  Theme.of(context).textTheme.subtitle.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          'Death: ' + (this.death ?? '(...)'),
                          style:  Theme.of(context).textTheme.subtitle.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
