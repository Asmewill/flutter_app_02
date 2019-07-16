import 'package:flutter/material.dart';

class testApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //头部View
    Widget titleSection=new Container(
      padding: const EdgeInsets.all(22.0),//容器边缘填充32像素
      child: new Row(//横向布局重左到右
        children: [
          new Expanded(//将Column（列）放入Expanded中会拉伸该列以使用该行中的所有剩余空闲空间,类似于layweight=1
              child: new Column(//竖直布局从上到下
                crossAxisAlignment: CrossAxisAlignment.start,//左对齐
                children: [
                  new Container(
                    padding: const EdgeInsets.only(bottom: 8.0),//容器边缘填充8像素
                    child: new Text(
                      "AAAA",
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Text(
                    "BBBBBBBBBBBBBBB",
                    style: new TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text("41aaaaaaaaaaaaa")
        ],
      ),
    );
    //中间3个buttonView
    Color color=Theme.of(context).primaryColor;
    Widget buttonSection=Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//空间平局分配
        children: [
          _buildButtonColumn(color,Icons.call,"CALL"),
          _buildButtonColumn(color,Icons.near_me,"ROUTE"),
          _buildButtonColumn(color,Icons.share,"SHARE"),
        ],
      ),
    );

    //整体的页面入口
    return MaterialApp(
      title: "Lake 示例",
      home:Scaffold(
        appBar: AppBar(
          title: Text("Lake 示例"),
        ),
        body: ListView(
          children: <Widget>[
            new Image.asset(
              "images/lake.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ) ,
    );
  }
  //Button 列View
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      //ainAxisAlignment和crossAxisAlignment属性来对齐其子项
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,

      children:<Widget> [
        Icon(icon,color: color),
        Container(
          margin: const EdgeInsets.only(top:8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color:  color
            ),
          ),
        )
      ],
    );
  }
  //中间文字部分
  Widget textSection=new Container(
    padding: const EdgeInsets.all(50.0),
    child: new Text(
      "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated"
          " 1,578 meters above sea level, it is one of the larger Alpine Lakes."
          " A gondola ride from Kandersteg, followed by a half-hour walk through pastures"
          " and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. "
          "Activities enjoyed here include rowing, and riding the summer toboggan run........",
      softWrap: true,
    ),
  );

}