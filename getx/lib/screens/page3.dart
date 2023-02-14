import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text('Body of Page 3'),
          ),
          ElevatedButton(
            onPressed: (){
              Get.toNamed('/page1');
            }, 
            child: Text('Go to page 1'))
        ],
      ),
    );
  }
}