import 'package:flutter/material.dart';

//一个无限滚动的ListView
class testApp09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ListView滚动布局演示",
      home: new MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("ListView滚动布局演示"),
        ),
        body: new ListView(
          children: <Widget>[
            new Center(
                child: new Container(
              child: new Text(
                "九寨沟",
                style: new TextStyle(
                  fontSize: 30.0,
                ),
              ),
              margin: EdgeInsets.only(top: 10),
            )),
            new Center(
                child: new Container(
              child: new Text(
                "四川最美风景区",
                style: new TextStyle(fontSize: 16.0),
              ),
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            )),
            new Center(
                child: Container(
              child: new Text(
                '''     九寨沟五花海 [1]  海拔2472米，水深5米，面积9万平方米，被誉为“九寨沟一绝”和“九寨精华”，在珍珠滩瀑布之上，熊猫湖的下部于日则沟孔雀河上游的尽头。五花海四周的山坡，入秋后便笼罩在一片绚丽的秋色中，色彩丰富，姿态万千。由于海底的钙华沉积和各种色泽艳丽的藻类，以及沉水植物的分布差异，使一湖之中形成了许多斑斓的色块，宝蓝、翠绿、橙黄、浅红，似无数块宝石镶嵌成的巨形佩饰，珠光宝气，雍容华贵。金秋时节，湖畔五彩缤纷的彩林倒映在湖面，与湖底的色彩混合成了一个异彩纷呈的彩色世界。其色彩十分丰富，甚至超出了画家的想象力。黄昏时分，火红的晚霞映入水中，湖水似金星飞溅，彩波粼粼，绮丽无比。从老虎嘴俯瞰它的全貌，俨然是一只羽毛丰满的开屏孔雀。长海流入五花海的水在经过石灰岩岩脉时，使水中带入了大量的石灰钙华物质。这些含有钙华物质的白色砂粒有很强的过滤作用，又像是热带珊瑚海中的沙子一样堆积着，连这里的藻类也因为受到了钙华物质的影响而变成白色。阳光一照，海子更为迷离恍惚，绚丽多姿，一片光怪陆离，使人进入了童话境地。
    有“九寨沟一绝”和“九寨精华”之誉的五花海，位于四川省九寨沟日则沟孔雀河上游的尽头。沿著幽林栈道，一路下坡而去，穿越幽林，不久便到达五花海。绕过五花海的西侧，有一段栈道是欣赏水光秋色的绝佳点。游人可在此驻卟。沿着栈道继续北行，到达五花海的北岸。一片空旷、平缓的山坡地很快就到了栈疲乏的终点。这里是五花海的出水口与孔雀河道的交接点，上建一座栈桥。栈桥南侧的湖面，水色斑斓，墨绿、宝蓝、翠黄的色块混杂交钽一光十色，似孔雀彩翅；栈桥北侧，河湾状如孔誉头颈，三株古树似顶花翎。因此从这里以下被称为孔雀河道。沿著孔雀河道的左岸北行约一百米，越过河道便上到环山公路。从这段公路俯视五花海，景色更加令人叫绝。沿环山公路往东南方向，就到了五花海东南侧的最高点，这里有一块巨大的石头，称为老虎石。站在老虎石上俯视，可以观察到五花海的全貌。
    五花海是九寨沟诸景点中最精彩一个。四周的山坡，入秋后便笼罩在一片绚丽的秋色中，色彩丰富，姿态万千，独霸九寨。五花海的彩叶大半集中在出水口附近的湖畔，一株株彩叶交织成锦，如火焰流金。含碳酸钙质的池水，与含不同叶绿素的水生群落，在阳光作用下，幻化出缤纷色彩，一团团、一块块，有湛蓝、有墨绿、有翠黄。岸上林丛，赤橙黄绿倒映池中，一片色彩斑斓，与水下沉木、植物相互点染，其美尤妙，故得名五花海。九寨人说：五花海是神池，它的水洒向哪儿，哪儿就花繁林茂，美丽富饶。
    　　五花海的底部景观妙不可言，湖水一边是翠绿色的，一边是湖绿色的，湖底的枯树由于钙化，变成一丛丛灿烂的珊瑚，在阳光的照射下，五光十色，非常迷人''',
                style: new TextStyle(fontSize: 14.0),
              ),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 70),
            ))
          ],
        ));
  }
}
