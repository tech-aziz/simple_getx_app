// import 'package:get/get.dart';
// import 'package:getx/model/product.dart';

// class ProductController extends GetxController {
//   // List<Product> products = [];
//   List<Product> product = <Product>[].obs;
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     fetchProducts();
//   }

//   void fetchProducts() async {
//     await Future.delayed(const Duration(
//       seconds: 1,
//     ));
//     var serverResponse = [
//       Product(
//           id: 0,
//           productName: 'Coca-cala',
//           price: 202,
//           productImage: '',
//           productDescription: 'This is the description of the product'),
//       Product(
//           id: 1,
//           price: 30,
//           productDescription: 'some description about product',
//           productImage: 'abd',
//           productName: 'FirstProd'),
//       Product(
//           id: 2,
//           price: 40,
//           productDescription: 'some description about product',
//           productImage: 'abd',
//           productName: 'SecProd'),
//       Product(
//           id: 3,
//           price: 49.5,
//           productDescription: 'some description about product',
//           productImage: 'abd',
//           productName: 'ThirdProd'),
//     ];
//     product = serverResponse;
//   }
// }
