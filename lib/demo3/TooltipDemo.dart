

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("tool tips demo") ,
      ),
      body: Center(//必须长按时才会弹出
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("长按弹出pop"),
          IconButton(
          icon: Icon(Icons.add),
          onPressed: null,
          tooltip: "aaa"
        ),

        ],
      ),
        
    
      ),
    );
  }
}