import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "水平布局示例",
      home: new MyApp1(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      appBar: new AppBar(
        title: new Text("水平布局示例"),
      ),
      body: new Column(
        children: <Widget>[
          new Text("大家好"),
          new Text("我是Owen"),

          new Expanded(
            child: new FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo(),
            ),
          )
        ],
      ),
    );
  }
}
class MyApp1 extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("垂直布局示例"),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Text("i am is a xiaobai ,i am studying flutter "),
          new Text("i am is a xiaobai ,i am studying flutter "),
          new Text("i am is a xiaobai ,i am studying flutter "),
          new Text("i am is a xiaobai ,i am studying flutter "),
          new Text("i am is a xiaobai ,i am studying flutter "),
          new Text("i am is a xiaobai ,i am studying flutter "),
        ],
      ),
    );
  }

}
