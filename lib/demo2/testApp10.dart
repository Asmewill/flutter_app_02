import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "层叠定位布局示例",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("层叠定位布局示例"),
        ),
        body: new Center(
          child: new Stack(
            children: <Widget>[
              new Image.network(
                 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1539049245502&di=84f58b05165b05ab75587d1c6bc73e3f&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F25%2F99%2F58%2F58aa038a167e4_1024.jpg'),
              new Positioned(
                  child: new Text(
                "Owen您好",
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "serif",
                  color: Colors.pink,
                ),
              ),
                left: 56,
                top: 56,
              )
            ],
          ),
        ));
  }
}
