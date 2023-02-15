import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/page1.dart';
import 'package:getx/screens/page3.dart';

import 'screens/getx_page1.dart';
import 'screens/getx_page2.dart';
import 'screens/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        //For Routing one page to another page
        getPages: [
          GetPage(name: '/getx_page1', page: () => GetX_Page1()),
          GetPage(name: '/getx_page2', page: () => GetXSecondPage()),
          GetPage(name: '/page1', page: () =>  Page1()),
          GetPage(name: '/page2', page: () => const Page2()),
          GetPage(name: '/page3', page: () => const Page3()),
          ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Page1());
  }
}
