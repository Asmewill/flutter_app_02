

import 'package:flutter/material.dart';
import 'package:flutter_app_02/demo3/pages/CustomRoute.dart';

class RoutePage extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "FirstPage",
          style: TextStyle(fontSize: 16.0),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).push(CustomRoute(SecondPage()));
          
            
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       backgroundColor: Colors.pinkAccent,
       appBar: AppBar(
         centerTitle: true,
         title:new Text(
           "SecondPage",
           style: new TextStyle(fontSize: 22.0),
           ) ,
           leading: Container(),//去掉了返回键
           backgroundColor: Colors.purple,
           elevation: 0.00,
           
       ),
       body: Center(
         child:MaterialButton(
           child: Icon(
             Icons.navigate_before,
             color: Colors.red,
             size: 64.0,
           ),
           onPressed: (){
              Navigator.of(context).pop();
           },
         ),
        //  child:Icon(
        //    Icons.navigate_before,
        //    color: Colors.redAccent,
        //    size: 64.0,
        //  ),
           
       ),

    );
  }

}