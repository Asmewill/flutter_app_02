

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_02/demo3/pages/AirPlayScreen.dart';
import 'package:flutter_app_02/demo3/pages/EmailScreen.dart';
import 'package:flutter_app_02/demo3/pages/HomeScreen.dart';
import 'package:flutter_app_02/demo3/pages/PagesScreen.dart';

class BottomNavigationWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BottomNavigationWidgetState();
  }

}

class BottomNavigationWidgetState extends  State<StatefulWidget> {
  final _bottomNavigationColor=Colors.blue;
  int currentIndex=0;
  List<Widget> list=new List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list..add(new HomeScreen())
      ..add(new EmailScreen())
      ..add(new PagesScreen())
      ..add(new AirPlayScreen());

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: list[currentIndex],
      bottomNavigationBar:new BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon:new Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: new Text(
              "HOME",
              style: new TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon:new Icon(
              Icons.email,
              color: _bottomNavigationColor,
            ),
            title: new Text(
              "Email",
              style: new TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon:new Icon(
              Icons.pages,
              color: _bottomNavigationColor,
            ),
            title: new Text(
              "Pages",
              style: new TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon:new Icon(
              Icons.airplay,
              color: _bottomNavigationColor,
            ),
            title: new Text(
              "AirPlay",
              style: new TextStyle(color: _bottomNavigationColor),
            ),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index){
            setState(() {
               currentIndex=index; 
            });
        },
      )
    );
  }
}