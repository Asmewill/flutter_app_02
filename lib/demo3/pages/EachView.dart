

import 'package:flutter/material.dart';

class EachView extends StatefulWidget{
  String title;
  EachView(this.title);
  @override
  State<EachView> createState() {
    // TODO: implement createState
    return new EachViewState();
  }

}
class EachViewState extends State<EachView>{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
    );
  }
}