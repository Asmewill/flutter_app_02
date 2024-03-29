

import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder{
  final Widget widget;
  CustomRoute(this.widget):super(
    transitionDuration:const Duration(seconds: 2),
    pageBuilder:(BuildContext context,Animation<double> animation,Animation<double> secondaryAnimation){
        return widget;   
    },
    transitionsBuilder:(BuildContext context,Animation<double> animation,Animation<double> secondaryAnimation,Widget child){
      //淡出过渡路由
      // return FadeTransition(
      //   opacity: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      //     parent:animation,curve:Curves.fastOutSlowIn
      //   )),
      //   child: child,
      // );
      //缩放过渡路由
      // return ScaleTransition(
      //   scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      //     parent:animation,curve: Curves.fastOutSlowIn
      //   )),
      //   child: child,
      // );
      //旋转+缩放路由
      // return RotationTransition(
      //     turns: Tween(begin: -1.0,end: 1.0).animate(CurvedAnimation(
      //       parent:animation,curve: Curves.fastOutSlowIn
      //     ),),
      //     child: ScaleTransition(
      //       scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      //         parent:animation,curve: Curves.fastOutSlowIn
      //       )),
      //       child: child,
      //     ),   
      // );
      //幻灯片路由(从上到下进入，从下到上退出)
      return SlideTransition(
        position: Tween<Offset>(begin:Offset(0.0,-1.0),end: Offset(0.0,0.0)).animate(CurvedAnimation(
          parent:animation,curve: Curves.fastOutSlowIn
        )),
        child: child,

      );

    }
  )
  

  ;




}