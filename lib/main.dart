import 'package:flutter/material.dart';
import 'package:flutter_app_02/demo2/testApp16.dart';
import 'package:flutter_app_02/demo2/testApp19.dart';
import 'package:flutter_app_02/demo2/testApp24.dart';
import 'package:flutter_app_02/demo2/testApp26.dart';

import 'demo/testApp1.dart';
import 'demo/testApp2.dart';
import 'demo/testApp3.dart';
import 'demo/testApp4.dart';
import 'demo/testApp5.dart';
import 'demo/testApp6.dart';
import 'demo/testApp7.dart';
import 'demo2/testApp01.dart';
import 'demo2/testApp02.dart';
import 'demo2/testApp03.dart';
import 'demo2/testApp04.dart';
import 'demo2/testApp05.dart';
import 'demo2/testApp06.dart';
import 'demo2/testApp07.dart';
import 'demo2/testApp08.dart';
import 'demo2/testApp09.dart';
import 'demo2/testApp10.dart';
import 'demo2/testApp11.dart';
import 'demo2/testApp12.dart';
import 'demo2/testApp13.dart';
import 'demo2/testApp14.dart';
import 'demo2/testApp15.dart';
import 'demo2/testApp25.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Mybutton(),
    );
  }
}

class Mybutton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyButton();
  }
}

class _MyButton extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new ListView(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("一个无限滚动的ListView"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp1();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Lake 示例"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp2();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Row 关键字水平布局"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp3();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Strawberry Pavlova Recipe"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp4();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("自定义AppBar"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp5();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("floatingActionButton"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp6();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("GestureDetector手势处理"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp7();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Flutter动画"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp01();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Hero图片控件"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp02();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("页面跳转返回数据"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp03();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("商品列表"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp04();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("页面跳转"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp05();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("自定义字体"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp06();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("ListView滑动删除"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp07();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("GestureDetector 手势"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp08();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("ListView滚动布局"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp09();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Stack层叠布局一"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp10();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Card布局示例"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp11();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Stack层叠布局二"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp12();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("ListView布局示例"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp13();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("GridView布局示例一"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp14();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Container布局容器示例"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp15();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Column垂直布局容器示例"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp16();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("GridView布局示例二"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp19();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("Horizontal List Demo"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp24();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("滴滴出行一"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp25();
                }));
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: new RaisedButton(
              child: new Text("滴滴出行二"),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                  return new testApp26();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
