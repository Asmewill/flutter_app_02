import 'package:flutter/material.dart';

class testApp6 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      home:new TutorialHome(),
    );
  }
}

class TutorialHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
       appBar: AppBar(
         leading: IconButton(
             icon: Icon(Icons.menu),
             tooltip: "navigation menu",
             onPressed:null ,
         ),
         title: Text("Example title"),
         actions: <Widget>[
           IconButton(
             icon: Icon(Icons.search),
             tooltip: "Search",
             onPressed: null,
           )
         ],
       ),
      body: Center(
        child: Text("Hello world!"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: 'Add',
          child: Icon(Icons.add),
      ),
      
    );
  }
}





