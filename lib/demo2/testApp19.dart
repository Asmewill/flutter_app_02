import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "网格列表Demo",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      appBar: new AppBar(
        title: new Text("网格列表Demo"),
      ),
      body: new GridView.count(
        primary: false,
        padding: new EdgeInsets.all(20.0),
        crossAxisSpacing: 0.0,
        crossAxisCount: 4,
        children: <Widget>[
          const Text("AAAAAA"),
          const Text("BBBBBB"),
          new Text("CCCCCCC"),
          new Text("DDDDDD"),
          const Text("AAAAAA"),
          const Text("BBBBBB"),
          new Text("CCCCCCC"),
          new Text("DDDDDD"),
          const Text("AAAAAA"),
          const Text("BBBBBB"),
          new Text("CCCCCCC"),
          new Text("DDDDDD"),
          const Text("AAAAAA"),
          const Text("BBBBBB"),
          new Text("CCCCCCC"),
          new Text("DDDDDD"),
        ],
        
      ),
    );
  }
}

