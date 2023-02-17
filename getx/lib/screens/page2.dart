import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/page3.dart';

class Page2 extends StatelessWidget {
  // List<Step> stepLists() {
  //   return [
  //       const Step(title: Text('Account'), content: Text('Account')),
  //       const Step(title: Text('Address'), content: Text('Address')),
  //       const Step(title: Text('Confirm'), content: Text('Confirm'))
  //     ];
  // }
  
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
   var myList = List<String>.generate(1000,(counter) => "Item $counter");
   
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
          LayoutBuilder(
            // key: key,
            builder:
                <Widget>(BuildContext context, BoxConstraints constraints) {
              final width = constraints.maxWidth;
              if (width < 600) {
                return Column(
                  children: [
                    Text('It\'s mobile device'),
                    Text("Width: " + width.toString()),
                  ],
                );
              } else if (width < 900 && width > 600) {
                return Text('It\'s a tablet device ');
              } else {
                return Text('It\'s a desktop or web device');
              }
            },
          ),
          // Stepper(
          //   type: StepperType.vertical,
          //   steps: stepLists(),
          // ),
          Text('data'),
          ListView(
            children: [
              Text("This is List: "+myList.toString()),
            ],
          )
        ],
      ),
    );
  }
}
