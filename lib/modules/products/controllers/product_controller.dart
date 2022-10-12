import 'package:fluttertest/data/models/product_model.dart';
import 'package:fluttertest/data/services/category_service.dart';
import 'package:fluttertest/data/services/product_service.dart';
import 'package:fluttertest/routes/app_pages.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var tabIndex = 0.obs;
  final ProductServiceImplt productService = ProductServiceImplt();
  final CategoryService categoryService = CategoryServiceIpmlt();
  var isLoading = true.obs;
  RxList listCategory = List.empty(growable: true).obs;
  RxList listProduct = List.empty(growable: true).obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

    @override
  void onInit() {
    getAllProduct();
    getAllCategory();
    super.onInit();
  }

  Future<void> getAllProduct() async {
    listProduct.value = await productService.getAllProduct();
  }

  Future<void> getAllCategory() async {
    try {
      isLoading(true);
      listCategory.value = await categoryService.getAllCategory();
    } finally {
      isLoading(false);
    }
  }
  navigateToDetail(index){
    Get.toNamed(Routes.DETAILPRODUCT,arguments: index);
  }
}
