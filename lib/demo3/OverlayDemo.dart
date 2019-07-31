import 'package:flutter/material.dart';
import 'dart:async';
class OverlayDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Overlay Demo',
          style: TextStyle(fontSize: 36.0),
        ),
      ),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
            child: Icon(Icons.fiber_smart_record),
            onPressed: () => showOverlay(context));
      }),
    );
  }

  showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
      return Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.purple,
        ),
      );
    });
    OverlayEntry overlayEntry2 = OverlayEntry(builder: (context) {
      return Center(
        child: Container(
          height: 50.0,
          width: 100.0,
          color: Colors.red,
        ),
      );
    });

    overlayState.insert(overlayEntry);
    overlayState.insert(overlayEntry2);

    await Future.delayed(Duration(seconds: 2));

    overlayEntry.remove();
    overlayEntry2.remove();
  }

}