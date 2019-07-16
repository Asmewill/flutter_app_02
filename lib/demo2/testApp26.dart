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
  Choice(title: "公交车", icon: Icons.directions_railway),
  Choice(title: "火车", icon: Icons.directions_bus),
  Choice(title: "步行", icon: Icons.directions_walk),
];

//一个无限滚动的ListView
class testApp26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "TabBar和TabBarView",
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
   Choice _selectedChoice=choices[0];
   void _select(Choice choice){
     setState(() {
       _selectedChoice=choice;
     });
      
   }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: choices.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: const Text("滴滴出行"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(choices[0].icon),
              onPressed: (){
                _select(choices[0]);
              },
            ),
            new IconButton(
              icon: new Icon(choices[1].icon),
              onPressed: (){
                _select(choices[1]);
              },
            ),
           new  PopupMenuButton<Choice>(
                  // icon:new Icon(Icons.today),
                   itemBuilder: (BuildContext context){
                     return  choices.skip(2).map<PopupMenuItem<Choice>>((Choice choice){
                           return PopupMenuItem<Choice>(
                             value: choice,
                             child: new Text(choice.title),
      
                           );
                     }).toList();
                   },
                     
            )

          ],
        ),
        body: new Padding(
          padding: const EdgeInsets.all(16.0),
          child: ChoiceDidi(choice: _selectedChoice,),
        ),
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
