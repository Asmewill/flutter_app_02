import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ListView布局示例",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("ListView布局示例"),
        ),
        body: new Center(
          child: new ListView(
            children: <Widget>[
              new ListTile(
                title:new Text(
                  '深圳市福田区中山路第8号当铺',
                  style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),
                ),
                subtitle: new Text("深圳市福田区国际大厦8l楼"),
                leading: new Icon(
                  Icons.wifi,
                  color: Colors.blueAccent,
                ),
              ),
              new Divider(),
              new ListTile(
                title: new Text("深圳市宝安区上川路瓦窑花园",style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: new Text("深圳市南山区大学城附近"),
                leading: new Icon(
                  Icons.access_alarms,
                  color: Colors.lightBlue,
                ),
              ),
              new Divider(),
              new ListTile(
                title: new Text("深圳市光明新区XXXX路",style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: new Text("深圳市......"),
                leading: new Icon(
                  Icons.access_time,
                  color: Colors.pinkAccent,
                ),
              ),
              new Divider(),
              new ListTile(
                title: new Text("深圳市光明新区XXXX路",style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: new Text("深圳市......"),
                leading: new Icon(
                  Icons.access_time,
                  color: Colors.pinkAccent,
                ),
              ),
              new Divider(),
              new ListTile(
                title: new Text("深圳市光明新区XXXX路",style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: new Text("深圳市......"),
                leading: new Icon(
                  Icons.access_time,
                  color: Colors.pinkAccent,
                ),
              ),
              new Divider(),
              new ListTile(
                title: new Text("深圳市光明新区XXXX路",style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: new Text("深圳市......"),
                leading: new Icon(
                  Icons.access_time,
                  color: Colors.pinkAccent,
                ),
              ),
              new Divider(),
              new ListTile(
                title: new Text("深圳市光明新区XXXX路",style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: new Text("深圳市......"),
                leading: new Icon(
                  Icons.access_time,
                  color: Colors.pinkAccent,
                ),
              ),
              new Divider(),
              new ListTile(
                title: new Text("深圳市光明新区XXXX路",style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18.0),),
                subtitle: new Text("深圳市......"),
                leading: new Icon(
                  Icons.access_time,
                  color: Colors.pinkAccent,
                ),
              ),
              new Divider(),
            ],
          ),
        ));
  }
}
