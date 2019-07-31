

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_02/eventbus/CountEvent.dart';
import 'package:flutter_app_02/eventbus/SecondEventScreen.dart';

import 'package:flutter_app_02/eventbus/bus.dart';

class FirstEventScreen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("First Screen") ,
      ),
      body: Center(
        child: StreamBuilder<CountEvent>(
          stream: behaviorBus.on<CountEvent>(),
          builder: (context,snapshot){
            return snapshot.hasData?Text("you pushed the button${snapshot.data.count} times"):Text("waiting for data");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return new SecondEventScreen();

          }));
        },

         child: Icon(Icons.navigate_next),
      ),
    );
  }

}