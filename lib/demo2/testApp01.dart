import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
//一个无限滚动的ListView
class testApp01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle="flutter 动画详解";
    return new MaterialApp(
      title: "Welcome to Flutter",
      home: new MyHomePage(title: appTitle),
      theme: new ThemeData(
          primaryColor: Colors.blueGrey
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;
  MyHomePage({Key key,this.title}):super(key:key);
  @override
  _MyHomePageState createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }

}

class _MyHomePageState extends State<MyHomePage>{
  bool _visible=true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new AnimatedOpacity(
            opacity: _visible?1.0:0.0,
            duration: new Duration(
                  milliseconds: 1000
            ),
          child: new Container(
            width: 200.0,
            height: 200.0,
            color: Colors.deepPurple,
          ),

        ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed:(){
            setState(() {
              _visible=!_visible;
            });
          },
         tooltip: "显示隐藏",
         child: new Icon(Icons.flip),

      ),
    );
  }

}


