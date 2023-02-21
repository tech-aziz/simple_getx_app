// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  // var size, height, width, orientation;
  var size, height, width, orientation;
  Page3({super.key});

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    // size = MediaQuery.of(context).size;
    // height = size.height;
    // width = size.width;
    // orientation = MediaQuery.of(context).orientation;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: Text('Add',style: TextStyle(fontSize: width * 0.05),)),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  label: Text('Remove',style: TextStyle(fontSize: width * 0.05))),
            ],
          )
        ],
      ),
    );
  }
}
