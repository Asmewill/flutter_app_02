

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_02/eventbus/CountEvent.dart';

import 'package:flutter_app_02/eventbus/bus.dart';

class SecondEventScreen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamBuilder<CountEvent>(
      stream: behaviorBus.on<CountEvent>(),
      builder: (context ,snapshot){
         return Scaffold(
           appBar: AppBar(
             title: Text("Second Screen"),
           ),
           body: Center(
             child: snapshot.hasData?Text("you pushed the button ${snapshot.data.count} times"):Text("waiting for data"),
           ),
           floatingActionButton: FloatingActionButton(
             onPressed: (){
               if(snapshot.hasData){
                  behaviorBus.fire(CountEvent(snapshot.data.count+1));    
               }else{
                behaviorBus.fire(CountEvent(1));         
               }
             
             },
             child: Icon(Icons.add),
           ),
         );
      },
    );
  }

}