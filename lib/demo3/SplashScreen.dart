

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_02/demo/MyHomePage.dart';
import 'package:flutter_app_02/demo2/testApp01.dart';

class SplashScreen extends StatefulWidget{
     
  @override
  State<SplashScreen> createState() {
    // TODO: implement createState
    return new SplashScreenState();
  }

}

class SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync:this,duration: Duration(milliseconds: 3000));
    animation=Tween(begin: 0.0,end: 1.0).animate(controller);
    controller.forward();
    animation.addStatusListener((status){
      if(status==AnimationStatus.completed){
             Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(BuildContext context){
               return new MyHomePage(title: "main",);
             }), (Route<dynamic> route){
               return route==null;
             });        
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new FadeTransition(
      opacity: controller,
      child: new Image.asset(
        "images/photo.jpg",
        scale: 1.0,
        fit: BoxFit.cover,
      ),
    );
  }
}