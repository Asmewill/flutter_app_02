import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Container布局容器示例",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Container布局容器示例"),
      ),
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.lightGreen,
        ),
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new Container(
                  width: 150,
                  height: 150,
                  decoration: new BoxDecoration(
                      border: new Border.all(width: 1.0, color: Colors.black87),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8.0))),
                  child: new Image.asset('images/pic1.jpg'),
                  margin: const EdgeInsets.all(4.0),
                )),
                new Expanded(
                    child: new Container(
                  width: 150,
                  height: 150,
                  decoration: new BoxDecoration(
                      color: Colors.deepPurple,
                      border:
                          new Border.all(width: 1.0, color: Colors.black38),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8.0))),

                )),
              ],
            ),
            new Row(
              children: <Widget>[
                 new Expanded(
                     child: new Container(
                         width: 150,
                         height: 150,
                         decoration: new BoxDecoration(
                           border: new Border.all(width: 1.0,color: Colors.blueAccent),
                           borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                         ),
                       child: new Image.asset('images/pic2.jpg',fit: BoxFit.cover,),
                     )
                 ),
                new Expanded(
                    child: new Container(
                      width: 150,
                      height: 150,
                      decoration: new BoxDecoration(
                        border: new Border.all(width: 1.0,color: Colors.blueAccent),
                        borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                      ),
                      child: new Image.asset('images/pic2.jpg'),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
