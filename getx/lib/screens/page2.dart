import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text('Body of Page 2'),
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/page3');
              },
              child: Text('Go to Page 3')),
        ],
      ),
    );
  }
}
