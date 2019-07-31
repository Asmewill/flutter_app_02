import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/**
 * onRecorder函数中，
 * oldIndex代表移动前item的序号
 * newIndex代表移动后item的序号
 * 由于在向后移动的时候，newIndex会因为之前的占位
 * 而多出一个，所以需要处理一下
 */

class ReorderableListViewDemo extends StatefulWidget {
  @override
  State<ReorderableListViewDemo> createState() {
    // TODO: implement createState
    return new ReorderableListViewDemoState();
  }
}

class ReorderableListViewDemoState extends State<ReorderableListViewDemo> {
  List<String> nameList = [
    "LeBron James",
    "Kevin Durant",
    "Anthony Davis",
    "James Harden",
    "Stephen Curry",
    "Giannis Antetokounmopo",
    "Joel Embiid",
    "Russell Westbrook",
    "Paul George",
    "Kawhi Leonard",
    "Jeremy Shuhow Lin"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: ReorderableListView(
        header: AppBar(
          title: Text("ReorderableListViewDemo"),
        ),
        children: nameList.map((String itemName) {
          return SizedBox(
            key: ObjectKey(itemName),
            height: 50,
            child: Card(
              color: Colors.blueAccent.withOpacity(0.4),
              child: Center(
                child: Text(
                  itemName,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          );
        }).toList(),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex = newIndex - 1;
            }
            var name = nameList.removeAt(oldIndex);
            nameList.insert(newIndex, name);
          });
        },
      ),
    );
  }
}
