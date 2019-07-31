import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_02/demo3/DraggableWidget.dart';


class DraggableDemo extends StatefulWidget {
  @override
  State<DraggableDemo> createState() {
    // TODO: implement createState
    return new DraggableDemoState();
  }
}

class DraggableDemoState extends State<DraggableDemo> {
  Color draggableColor=Colors.grey;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(100.0, 100.0),
            widgetColor: Colors.tealAccent,
          ),
          DraggableWidget(
            offset: Offset(100.0, 100.0),
            widgetColor: Colors.redAccent,
          ),
          Center(
            child: DragTarget(builder: (context, candidateData, rejectedData){
               return Container(
                  width: 200,
                  height: 200,
                  color: draggableColor,
               );

            },onAccept:(Color color){
              draggableColor=color;
            } ,),
          )
        ],
      ),
    );
  }
}
