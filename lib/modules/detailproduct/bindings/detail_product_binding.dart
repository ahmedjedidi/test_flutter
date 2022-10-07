import 'package:fluttertest/modules/detailproduct/controllers/detail_product_controller.dart';
import 'package:get/get.dart';

class DetailProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailProductController>(
      () => DetailProductController(),fenix: true
    );
  }
}
