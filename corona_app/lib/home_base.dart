import 'package:corona_app/menu_grid.dart';
import 'package:corona_app/home_list.dart';
import 'package:flutter/material.dart';

class HomeBase extends StatefulWidget {
  final Map<String, dynamic> jsonData;

  HomeBase({
    this.jsonData,
  });

  @override
  _HomeBaseState createState() => _HomeBaseState();
}

class _HomeBaseState extends State<HomeBase> with SingleTickerProviderStateMixin {

  bool _menuPressed = false;

  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HomeListView(
            jsonData: this.widget.jsonData,
          ),
          AnimatedContainer(
            duration: _animationController.duration,
            margin: EdgeInsets.only(
              left: _menuPressed ? 0.0 : MediaQuery.of(context).size.width -50,
              bottom: _menuPressed ? 0.0 : MediaQuery.of(context).size.height - 50 - MediaQuery.of(context).padding.top,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  color: MediaQuery.of(context).platformBrightness == Brightness.light ? Theme.of(context).canvasColor : Theme.of(context).cardColor,
                  child: MenuList(),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 100.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        ),
                      ],
                    ),
                    child: RawMaterialButton(
                      elevation: 20.0,
                      padding: EdgeInsets.all(0.0),
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: _animationController,
                      ),
                      onPressed: () {
                        setState(() {
                          _menuPressed = !_menuPressed;
                          if(_menuPressed){
                            _animationController.forward();
                          }else{
                            _animationController.reverse();
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
