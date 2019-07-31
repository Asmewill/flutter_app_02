import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_02/demo3/pages/AirPlayScreen.dart';
import 'package:flutter_app_02/demo3/pages/EachView.dart';
import 'package:flutter_app_02/demo3/pages/EmailScreen.dart';
import 'package:flutter_app_02/demo3/pages/HomeScreen.dart';
import 'package:flutter_app_02/demo3/pages/PagesScreen.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BottomAppBarDemoState();
  }
}

class BottomAppBarDemoState extends State<StatefulWidget> {
  List<Widget> eachView;
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eachView = List();
    eachView..add(EachView("Home"))..add(EachView("Me"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: eachView[index],
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.near_me),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.edit_location),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
