import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "GridView布局示例",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTitleList(int count){
      return new List<Container>.generate(count, (int index) =>new Container(
                child: new Image.asset('images/pic1.jpg'),
         )
      );
    }


    return new Scaffold(
        appBar: new AppBar(
          title: new Text("GridView布局示例"),
        ),
        body: new Center(
          child:new GridView.extent(
            maxCrossAxisExtent: 150.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: _buildGridTitleList(10),

          ) ,

        )
    );
  }
}
