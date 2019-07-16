import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Card布局示例",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card=new SizedBox(
        height: 250.0,
        child: new Card(
          child: new Column(
            children: <Widget>[
              new ListTile(
                title: new Text(
                  "深圳市南山区西丽",
                  style: new TextStyle(fontWeight: FontWeight.w300),
                ),
                subtitle: new Text("宝安公园附近406"),
                leading: new Icon(
                  Icons.account_box,
                  color: Colors.lightBlue,
                ),
              ),
              new Divider(),
              new ListTile(
                title: new Text('深圳市宝安区西丽街道',style: new TextStyle(fontWeight: FontWeight.w100),),
                subtitle: new Text("洪湖公园502"),
                leading: new Icon(
                  Icons.account_box,
                  color: Colors.lightBlue,
                ),
              ),
              new Divider(),
            ],
          ),
        ));
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Card布局示例"),
        ),
        body: new Center(
            child:card
        ));
  }
}
