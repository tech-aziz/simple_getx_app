// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/getx_page2.dart';
import 'package:getx/screens/page1.dart';

import '../controller/apple_controller.dart';
import '../controller/mango_controller.dart';
import '../widgets/custom_card.dart';

class GetX_Page1 extends StatefulWidget {

  GetX_Page1({super.key});

  @override
  State<GetX_Page1> createState() => _GetX_Page1State();
}

class _GetX_Page1State extends State<GetX_Page1> {
  final AppleController appleProduct = Get.put(AppleController());

  // final MangoController mangoProduct = Get.put(MangoController());
  RxInt count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GetX page 1'),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              // Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(GetXSecondPage(),
                        arguments: appleProduct.appleValue);
                  },
                  child: customCard(
                      image: Image.network(
                          'https://www.collinsdictionary.com/images/full/apple_158989157.jpg'),
                      productName: 'Apple',
                      weight: 1,
                      price: 200.00),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    // Get.to(GetXSecondPage(), arguments: mangoProduct.mangoValue);
                  },
                  child: customCard(
                      image: Image.network(
                          'https://stoller.com.au/wp-content/uploads/2020/04/iStock-529964085-scaled.jpg'),
                      productName: 'Mango',
                      weight: 2,
                      price: 300.00),
                ),
                const SizedBox(
                  height: 5,
                ),

                TextButton.icon(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.green)))),
                    onPressed: () {
                      Get.snackbar('', '',
                          snackPosition: SnackPosition.BOTTOM,
                          snackStyle: SnackStyle.FLOATING,
                          // overlayBlur: .8,
                          // overlayColor: Colors.red[200],
                          duration: const Duration(seconds: 3),
                          // animationDuration: const Duration(seconds: 1),
                          backgroundColor: Colors.green,
                          titleText: const Text(
                            'Welcome',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: const Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 20,
                          ),
                          maxWidth: MediaQuery.of(context).size.width / 2,
                          // padding: const EdgeInsets.all(20),
                          // margin: const EdgeInsets.all(50),
                          isDismissible: true,
                          messageText: const Text(
                              'To Media Soft Data System Ltd',
                              style: TextStyle(color: Colors.white)));
                    },
                    icon: const Icon(
                      Icons.message_rounded,
                      color: Colors.green,
                      size: 15,
                    ),
                    label: const Text('SnackBar')),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                        radius: 25,
                        title: 'This is dialog',
                        titlePadding: const EdgeInsets.all(5),
                        barrierDismissible: false,
                        content: middleContent(),
                        confirm: confirmBtn(),
                        cancel: cencleBtn(),
                        // content: Text('data'),
                        // textCancel: 'Ignore',
                        // textConfirm: 'Ok',
                        // onConfirm: () {
                        //   Get.back();
                        // },
                        // onCancel: () {

                        // },
                        // cancel: Text('data'),

                        // middleText: 'This is the middle text .....',
                      );
                    },
                    child: const Text('Show Dialog')),

                ElevatedButton(
                    onPressed: () {
                      Get.bottomSheet(
                          // backgroundColor: Colors.red,
                          elevation: 20,
                          backgroundColor: Colors.white,
                          barrierColor: Colors.green,
                          isDismissible: true,
                          // ignoreSafeArea: false,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                          SizedBox(
                            height: 200,
                            child: Column(
                              children: const [
                                ListTile(
                                  leading: Icon(
                                    Icons.menu,
                                    color: Colors.green,
                                  ),
                                  title: Text('Azizul Hakim'),
                                  subtitle: Text('Software Engineer'),
                                  trailing: Icon(
                                    Icons.call,
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ));
                    },
                    child: Text('Show Bottom Sheet')),

                ElevatedButton(
                    onPressed: () {
                      count++;
                      setState(() {
                        
                      });
                    },
                    child:const Text('plus/minus')),
                Obx(()=>Text('$count')),

                ElevatedButton(
                    onPressed: () {
                      // Get.to(Page1());
                      Get.toNamed('/page1');
                    },
                    child:const Text('Go Page1')),

                // InkWell(
                //   onTap: () {
                //     Get.to(GetXSecondPage(), arguments: product.counterValue);
                //   },
                //   child: customCard(
                //       image: Image.network(
                //           'https://th-thumbnailer.cdn-si-edu.com/qwdFU8TzPixEtFzRLC2V_Ezr2tw=/fit-in/1600x0/https%3A%2F%2Ftf-cmsv2-smithsonianmag-media.s3.amazonaws.com%2Ffiler%2Fd5%2F24%2Fd5243019-e0fc-4b3c-8cdb-48e22f38bff2%2Fistock-183380744.jpg'),
                //       productName: 'Banana',
                //       weight: 2,
                //       price: 250.00),
                // ),
                // const SizedBox(height: 5,),

                // InkWell(
                //   onTap: () {
                //     Get.to(GetXSecondPage(), arguments: product.counterValue);
                //   },
                //   child: customCard(
                //       image: Image.network(
                //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjlwr1crYLaGMUxORrX6hzxWBmPLXS8IScrA&usqp=CAU'),
                //       productName: 'Papaya',
                //       weight: 1,
                //       price: 90.00),
                // ),
                //      const SizedBox(height: 5,),
                //  InkWell(
                //   onTap: () {
                //     Get.to(GetXSecondPage(), arguments: product.counterValue);
                //   },
                //   child: customCard(
                //       image: Image.network(
                //           'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/90074774_XL1_20210505.jpg'),
                //       productName: 'Pineapple',
                //       weight: 4,
                //       price: 340.00),
                // ),
              ],
            ),
          ),
        ));
  }

  Widget middleContent() {
    return Column(
      children: const [
        Text('Middle Content one here'),
        Text('Middle Content one Widgets')
      ],
    );
  }

  Widget confirmBtn() {
    return ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: const Text('Confirm'));
  }

  Widget cencleBtn() {
    return ElevatedButton(onPressed: () {}, child: const Text('Cancle'));
  }
}
