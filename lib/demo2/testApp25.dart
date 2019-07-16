import 'package:flutter/material.dart';

class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(title: "自驾", icon: Icons.directions_car),
  Choice(title: "自行车", icon: Icons.directions_bike),
  Choice(title: "乘船", icon: Icons.directions_boat),
  Choice(title: "公交车", icon: Icons.directions_bus),
  Choice(title: "火车", icon: Icons.directions_railway),
  Choice(title: "步行", icon: Icons.directions_walk),
];

//一个无限滚动的ListView
class testApp25 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "TabBarView类似ViewPager",
      home: new DidiSample(),
    );
  }
}

class DidiSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _DidiSampleState();
  }
}

class _DidiSampleState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: choices.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: const Text("滴滴出行"),
          bottom: new TabBar(
              isScrollable: true,
              tabs: choices.map<Tab>((Choice choice) {
            return new Tab(
              text: choice.title,
              icon: new Icon(choice.icon),
            );
          }).toList()),
        ),
        body: new TabBarView(
            children: choices.map<Padding>((Choice choice) {
          return new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new ChoiceDidi(
              choice: choice,
            ),
          );
        }).toList()),
      ),
    );
  }
}

class ChoiceDidi extends StatelessWidget {
  final Choice choice;
  const ChoiceDidi({Key key, this.choice}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 108.0, color: textStyle.color),
            new Text(
              choice.title,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
