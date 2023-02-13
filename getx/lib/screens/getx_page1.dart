// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/getx_page2.dart';

import '../controller/apple_controller.dart';
import '../controller/mango_controller.dart';
import '../widgets/custom_card.dart';

class GetX_Page1 extends StatelessWidget {
  final AppleController appleProduct = Get.put(AppleController());
  final MangoController mangoProduct = Get.put(MangoController());

  GetX_Page1({super.key});

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
                    Get.to(GetXSecondPage(), arguments: mangoProduct.mangoValue);
                  },
                  child: customCard(
                      image: Image.network(
                          'https://stoller.com.au/wp-content/uploads/2020/04/iStock-529964085-scaled.jpg'),
                      productName: 'Mango',
                      weight: 2,
                      price: 300.00),
                ),
                const SizedBox(height: 5,),

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
}
