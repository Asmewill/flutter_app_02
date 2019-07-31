import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeepAliveDemo extends StatefulWidget {
  @override
  State<KeepAliveDemo> createState() {
    // TODO: implement createState
    return new KeepAliceDemoState();
  }
}

class KeepAliceDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("KeepAliveDemo"),
        centerTitle: true,
        leading: Container(),
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.directions_bike),
            ),
            Tab(
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          MyHomePage(title: "page1"),
          MyHomePage(title: "Page2"),
          MyHomePage(title: "Page3"),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomePageState();
  }
}

/**
 * 实现原理，使用AutomaticKeepAliveClientMixin，并重写wantKeepAlive方法，让状态不被回收掉。
 */
class MyHomePageState extends State<StatefulWidget>
    with AutomaticKeepAliveClientMixin {
  int count = 0;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _addCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "you have pushed the button many times",
              style: TextStyle(fontSize: 18),
            ),
            Text("$count")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }


}
