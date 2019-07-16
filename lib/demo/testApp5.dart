import 'package:flutter/material.dart';

class testApp5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home:MyScaffold(),
    );
  }


}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(
        children: <Widget>[
           MyAppBar(
             title: Text("自定义AppBar"),
           )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  // Fields in a Widget subclass are always marked "final".
  final Widget title;
  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //margin: EdgeInsets.only(top: 30),
      height: 86.0,

      padding:EdgeInsets.only(top: 30),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation menu",
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
             onPressed: (){
               
             },
          ),
        ],
      ),
    );
  }



}

