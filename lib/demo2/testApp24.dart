import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Horizontal List Demo",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Horizontal List Demo"),
      ),
      body: new Container(
        margin:new EdgeInsets.symmetric(vertical: 20),
        height: 200,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Container(
              width: 160,
              color: Colors.lightBlue,
            ),
            new Container(
              width: 160,
              color: Colors.green,
            ),
            new Container(
              width: 160.0,
              color: Colors.deepOrange,
              child: new Column(
                children: <Widget>[
                  new Text(
                    "简介",
                     style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 36.0),
                    ),
                  new Text(
                    "评论",
                    style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 36.0),
                  ),
                ],
              ),
            ),
             new Container(
               width: 160,
               color: Colors.deepPurpleAccent,
             ),
             new Container(
               width: 120,
               color: Colors.lime,
             )
          ],
        ),
      ),
    );
  }
}

