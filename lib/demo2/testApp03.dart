import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
//一个无限滚动的ListView
class testApp03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Welcome to Flutter",
      home: new FirstPage(),
      theme: new ThemeData(
          primaryColor: Colors.blueGrey
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("跳转页面返回数据"),
      ),
      body: new Center(
        child: new RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
        onPressed: (){
          _navigateToSecondPage(context);
        },
        child: new Text("选择一个选项,任意选项"),
    );
  }
  _navigateToSecondPage(BuildContext context) async{
    final result=await Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (_){
                return new SecondPage();
            }
         )
    );
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("$result")));
  }

}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("选择一条数据"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             new Padding(
                 padding: const EdgeInsets.all(28.0),
                 child: new RaisedButton(
                     onPressed: (){
                        Navigator.pop(context,"李老师您好1111");//上个页面的返回值
                     },
                     child: new Text("李老师您好"),
                 ),
             ),
            new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new RaisedButton(
                    onPressed: (){
                      Navigator.pop(context,"hi flutter");
                    },
                  child: new Text("hi flutter..."),
                ),
            )
          ],
        ),
      ),

    );
  }
}








