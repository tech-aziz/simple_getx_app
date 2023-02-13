import 'package:get/get.dart';

class MangoController extends GetxController {
  RxInt mangoValue = 0.obs;

  void incrementMangoValue(){
    mangoValue.value++;
  }

  void decrementMangoValue(){
    mangoValue.value--;
  }
}