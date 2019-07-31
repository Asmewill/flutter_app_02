import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Expansion Tile"),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text("Expansion Tile"),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          initiallyExpanded: false,
          children: <Widget>[
            ListTile(
                  title: Text("List Title"),  
                  subtitle: Text("SubTitle"),
            )
          ],
        ),
      ),
    );
  }
}
