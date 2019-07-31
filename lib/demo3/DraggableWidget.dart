

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DraggableWidget extends StatefulWidget{
  final Offset offset;
  final Color widgetColor;
  const DraggableWidget({Key key,this.offset,this.widgetColor}):super(key:key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new DraggableWidgetState();
  }

}
class DraggableWidgetState extends State<DraggableWidget>{
  Offset offset=Offset(0.0,0.0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    offset=widget.offset;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.widgetColor,
        child:Container(
          width: 100.00,
          height: 100.00,
          color: widget.widgetColor.withOpacity(0.5),
        ) ,
        feedback: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset){
            setState(() {
             this.offset=offset; 
            });
        },   
      ),
    );
  }
}
