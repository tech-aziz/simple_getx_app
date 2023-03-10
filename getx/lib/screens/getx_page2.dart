import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/page1.dart';

import '../controller/apple_controller.dart';
import '../controller/mango_controller.dart';

class GetXSecondPage extends StatelessWidget {
  final AppleController appleProduct = Get.put(AppleController());
  // final MangoController mangoProduct = Get.put(MangoController());
  GetXSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appleProduct.appleValue.toString(),
          style: const TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 18,
            )),
        actions: [
          // Text(mangoProduct.mangoValue.toString()),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(Page1());
                },
                child: Text('Go to Page 1')),
          ],
        ),
      ),
    );
  }
}
