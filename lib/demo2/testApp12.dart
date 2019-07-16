import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Stack层叠布局示例",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Stack层叠布局示例"),
        ),
        body: new Center(
            child:new Stack(
              alignment: const FractionalOffset(0.45, 0.5),
              children: <Widget>[
                new CircleAvatar(
                  backgroundImage: new AssetImage('images/pic1.jpg'),
                  radius: 100.0,
                ),
                new Container(
                  decoration: new BoxDecoration(
                    color: Colors.black38
                  ),
                  child: new Text("Owen1",
                     style: new TextStyle(
                       fontSize: 22.0,
                       fontWeight: FontWeight.bold,
                       color: Colors.white
                     ),
                  ),
                )
              ],
            )
        ));
  }
}
