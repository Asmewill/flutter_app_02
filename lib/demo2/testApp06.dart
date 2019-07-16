import 'package:flutter/material.dart';


//一个无限滚动的ListView
class testApp06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "自定义字体",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("自定义字体"),
      ),
      body: new Center(
        child: new Text("坑少军老师好",
        style: new TextStyle(
          fontFamily: 'myfont',
          fontSize: 20.0
        ),)
      ),
    );
  }
}














