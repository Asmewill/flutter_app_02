import 'package:flutter/material.dart';

class testApp3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //可以使用new 关键字
//        return new Container(
//          decoration: new BoxDecoration(color: Colors.white),
//          child: new Center(
//            child: new Text(
//                "Hello world",
//              textDirection: TextDirection.ltr,
//              style: new TextStyle(color: Colors.red,fontSize: 20.0),
//            ),
//          ),
//        );
    //不使用new 关键字
//        return Container(
//          decoration:  BoxDecoration(color:Colors.white),
//          child: Center(
//            child: Text(
//              "Hello World",
//              textDirection: TextDirection.ltr,
//              style:  TextStyle(fontSize: 30,color: Colors.grey),
//            ),
//          ),
//        );
    return new MaterialApp(
      title: "Row 关键字水平布局",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Row 关键字水平布局"),
        ),
        body:Center(child: buildRow()),//横向布局
        // body:Center(child: buildColumn()),//纵向布局
        //  body: Center(child: buildRowWithExpand(),),//Expand可以使用类似LayoutWeight的布局
        // body:Center(child: buildRowWithMainAxisSize() ,),//主轴聚集
      ),
    );

  }
  //测试行spaceEvenly属性
  Widget buildRow() {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset("images/pic1.jpg"),
        Image.asset("images/pic1.jpg"),
        Image.asset("images/pic1.jpg")
      ],

    );
  }
  //测试列spaceEvenly属性
  Widget buildColumn() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset("images/pic1.jpg"),
        Image.asset("images/pic1.jpg"),
        Image.asset("images/pic1.jpg")
      ],
    );
  }
  //Expanded widget具有一个flex属性，它是一个整数，用于确定widget的弹性系数,默认弹性系数是1, flex相当于layoutWeight属性
  Widget buildRowWithExpand(){
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.center,//数值居中
      children: <Widget>[
        new Expanded(
          child: new Image.asset("images/pic1.jpg", fit: BoxFit.cover),
        ),
        new Expanded(
          child: new Image.asset("images/pic2.jpg",
              fit: BoxFit.cover),
          flex: 2,
        ),
        new Expanded(
          child: new Image.asset("images/pic3.jpg", fit: BoxFit.cover),
        ),
      ],
    );
  }
  //MainAxisSize.min将孩子紧密聚集在一起
  Widget buildRowWithMainAxisSize(){
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Icon(Icons.star,color:Colors.green,),
        new Icon(Icons.star,color:Colors.green,),
        new Icon(Icons.star,color:Colors.green,),
        new Icon(Icons.star,color:Colors.black,),
        new Icon(Icons.star,color:Colors.black,),
      ],
    );
  }


}