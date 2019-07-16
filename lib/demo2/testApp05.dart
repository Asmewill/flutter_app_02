import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "导航页面示例",
      home: new FirstScreen(),

    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("导航页面示例"),
      ),
      body: new Center(
        child: new RaisedButton(
            onPressed:(){
              Navigator.push(context, new MaterialPageRoute(builder: (_)=> new SecondPage()));
            },
          child: new Text("查看商品详情页面"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("亢老师的flutter课程"),
        backgroundColor: Colors.red,
      ),
      body: new Center(
        child: new RaisedButton(
            onPressed: (){
               Navigator.pop(context);
            },
            child: new Text("返回界面"),
        )

      ),
    );
  }
}












