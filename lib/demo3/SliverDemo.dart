import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliveDemo extends StatefulWidget {
  @override
  State<SliveDemo> createState() {
    // TODO: implement createState
    return new SliveDemoState();
  }
}

class SliveDemoState extends State<SliveDemo> {
  ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            leading: Container(),
            backgroundColor: Colors.blueAccent,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Title"),
              centerTitle: true,
              background: Image.network(
                "https://www.snapphotography.co.nz/wp-content/uploads/New-Zealand-Landscape-Photography-prints-12.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100.0,
              color: Colors.pinkAccent.withOpacity(0.8),
              child: Center(
                child: Text(
                  "SliverToBoxAdapter",
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2.0),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.pink.withOpacity(0.8),
                child: Text('Sliver Grid Item $index'),
              );
            }, childCount: 10),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue,
                child: Text('Sliver Fixed Extent List Item $index'),
              );
            }, childCount: 10),
          ),
          SliverFillViewport(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 50.0,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text("SliverFillViewport"
                    ,style: TextStyle(color: Colors.white,fontSize: 25.0),),
        
                  ),
                ),
              ] 
            ),
            viewportFraction: 2.0,
          )
        ],
      ),
    );
  }
}
