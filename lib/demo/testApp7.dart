import 'package:flutter/material.dart';
//处理手势
class testApp7 extends StatelessWidget{
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
        child: MyButton(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: 'Add',
          child: Icon(Icons.add),
      ),
      
    );
  }
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Scaffold.of(context).showSnackBar(new SnackBar(content:new Text("你点击了GestureDetector Button") ,));
      },
      child: Container(
        height: 36.0,
        width: 200,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal:8.0),//对称缩放
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text(
              "GestureDetector",
               style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}







