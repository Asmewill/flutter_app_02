

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WaterWave extends StatefulWidget{
     @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new WaterWaveState();
  }
}
class WaterWaveState extends State<WaterWave> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('With out spalsh color demo'),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          brightness: Theme.of(context).brightness,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              title: Text('123'),
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.description),
              title: Text('123'),
            )
          ],
        ),
      ),
    );
  }
}