import 'package:flutter/material.dart';


//一个无限滚动的ListView
class testApp08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "按下处理Demo",
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
        title: new Text("按下处理Demo"),
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }

}


class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){
        final snackBar=new SnackBar(content: new Text("Owen按下"));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: new Text("测试按钮"),
      ),
    );
  }
}
