import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipDemo extends StatefulWidget {
  @override
  State<ClipDemo> createState() {
    // TODO: implement createState
    return new ClipDemoState();
  }
}

class ClipDemoState extends State<ClipDemo> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip标签"),
        centerTitle: true,
        leading: Container(),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Chip(
              label: Text("data"),
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: Text("01"),
              ),
              onDeleted: () {
                print("deleted");
              },
            ),
            ActionChip(
              label: Text("ACTION CHIP"),
              onPressed: () {
                setState(() {
                  // Scaffold.of(context).showSnackBar(SnackBar(content: Text("ACTION CHIP"),));
                  print("ACTION CHIP");
                });
              },
            ),
            FilterChip(
              label: Text("FILTER CHIP"),
              selected: isSelected,
              onSelected: (_isSelected) {
                setState(() {
                  isSelected = _isSelected;
                });
              },
              selectedColor: Colors.blue.shade100,
            ),
            ChoiceChip(
              label: Text("CHOICE CHIP"),
              labelStyle:TextStyle(color: Colors.white),
              selected: isSelected,
              onSelected: (_isSelected) {
                setState(() {
                  isSelected = _isSelected;
                });
              },
              selectedColor: Colors.blue.shade400,
            ),
            InputChip(
              label: Text("Aaron Burr"),
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: Text("AB"),
              ),
              onPressed: (){
                print("I am the one thing in life");
              },
              onDeleted: (){
                print("InputChip onDeleted");
              },
            )
          ],
        ),
      ),
    );
  }
}
