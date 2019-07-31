import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  @override
  State<WrapDemo> createState() {
    // TODO: implement createState
    return new WrapDemoState();
  }
}

class WrapDemoState extends State<WrapDemo> {
  List<Widget> list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Opacity(
        opacity: 0.8,
        child: Container(
          width: width,
          height: height *2/ 3,
          color: Colors.grey,
          child: Wrap(
            children: list,
            spacing: 0,
            crossAxisAlignment: WrapCrossAlignment.center,
          ),
        ),
      ),
    ));
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          if(list!=null&&list.length<9){
        //    list.add(buildPhoto(list.length));
            list.insert(list.length-1, buildPhoto(list.length));
          }
       
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0), //外围间距
        child: Container(
          width: 150,
          height: 150,
          color: Colors.black38,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto(int postion) {

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 150,
        color: Colors.yellow[200],
        child: Center(
          child: Text("照片$postion"),
        ),
      ),
    );
  }
}
