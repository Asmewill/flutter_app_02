import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PullOnLoading extends StatefulWidget {
  @override
  State<PullOnLoading> createState() {
    // TODO: implement createState
    return new PullOnLoadingState();
  }
}

class PullOnLoadingState extends State<PullOnLoading> {
  ScrollController controller;
  List<String> images;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new ScrollController();
    images = new List();
    fetchTen();
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        fetchTen();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("pull to loading demo"),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await new Future.delayed(const Duration(seconds: 3));
          images.clear();
          fetchTen();
        
        },
        child: GridView.builder(
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0),
          controller: controller,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              constraints: BoxConstraints.tightFor(height: 150),
              child: Image.asset(images[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }

  fetch() async {
    setState(() {
      images.add("images/pic1.jpg");
    });
  }

  fetchTen() {
    for (int i = 0; i < 10; i++) {
      fetch();
    }
  }
}
