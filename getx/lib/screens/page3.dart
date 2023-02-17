// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  var size, height, width, orientation;
  Page3({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        centerTitle: true,
      ),
      body: orientation == Orientation.portrait
          ? Container(
              color: Colors.blue,
              height: height / 4,
              width: width / 4,
            )
          : Container(
              color: Colors.red,
              height: height / 3,
              width: width / 3,
            ),
    );
  }
}
