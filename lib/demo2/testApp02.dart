import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
//一个无限滚动的ListView
class testApp02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle="页面切换动画";
    return new MaterialApp(
      title: "Welcome to Flutter",
      home: new FirstPage(),
      theme: new ThemeData(
          primaryColor: Colors.blueGrey
      ),
    );
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("图片控件"),
      ),
      body: new GestureDetector(
        child: new Hero(
            tag: "第一张图片",
            child:new Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562844340866&di=2a69ef1c87450d2d124de0459fc64de6&imgtype=0&src=http%3A%2F%2Ff.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F8326cffc1e178a82c4403d44f803738da877e8d2.jpg",
            ),
        ),
        onTap: (){
          Navigator.push(context, new MaterialPageRoute(builder: (_){
              return new SecondPage();

          }));
        },
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
        title: new Text("第二张图片"),
      ),
      body: new GestureDetector(
          child: new Hero(
              tag: "第二张图片....",
              child: new Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562844340866&di=1a241624eab9fbfd8e22a314afdaa977&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F4a36acaf2edda3ccdc0347c30fe93901203f926a.jpg"),
          ),
        onTap: (){
            Navigator.pop(context);
        },
      ),
    );
  }
}






