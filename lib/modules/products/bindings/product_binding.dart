import 'package:fluttertest/modules/products/controllers/product_controller.dart';
import 'package:get/get.dart';


class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProductController>(
       ProductController()
    );
  }
}