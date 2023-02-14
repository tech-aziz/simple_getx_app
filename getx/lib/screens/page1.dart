import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text('Body of Page 1'),
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/page2');
              },
              child: Text('Go to Page 2')),
        ],
      ),
    );
  }
}
