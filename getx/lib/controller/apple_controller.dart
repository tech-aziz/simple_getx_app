import 'package:get/get.dart';

class AppleController extends GetxController {
  RxInt appleValue = 0.obs;

  void incrementAppleValue(){
    appleValue.value++;
  }

  void decrementAppleValue(){
    appleValue.value--;
  }
}