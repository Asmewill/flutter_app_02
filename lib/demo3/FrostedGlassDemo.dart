

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrostedGlassDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return new Scaffold(
        body: new Stack(
          children: <Widget>[
            new ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: new FlutterLogo(),
            ),
            new Center(
              child: new ClipRect(
                child: new BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,sigmaY: 10.0
                  ), 
                  child:Opacity(
                    opacity: 0.5,
                    child: new Container(
                       width: 200.0,
                       height: 200.0,
                       decoration: new BoxDecoration(
                         color: Colors.grey.shade300
                       ),
                       child: new Center(
                         child: new Text("Forsted",style:Theme.of(context).textTheme.display3,),
                       ),
                    ),
                  ),
                ),
                
              ),
            )
          ],
        ),
    );
  }

}