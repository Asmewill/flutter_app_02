import 'package:flutter/material.dart';

import 'testApp02.dart';


//一个无限滚动的ListView
class testApp07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "滑动删除示例",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  List<String> items =
      new List<String>.generate(30, (index) => "列表项${index + 1}");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("滑动删除示例"),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return new Dismissible(
                key: new Key(item),
                onDismissed: (direction) {
                  items.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("$item 被删除了")));
                },
                child: new ListTile(
                  title: new Text("$item"),
                  onTap:(){
              //      Navigator.push(context, new MaterialPageRoute(builder: (_)=> new SecondPage()));
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text("$item 被点击了")));
                  }
                ),
              );
            }));
  }
}
