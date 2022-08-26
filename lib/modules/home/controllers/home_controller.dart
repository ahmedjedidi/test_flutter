import 'package:fluttertest/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  
  navigateToProducts(){
    Get.toNamed(Routes.PRODUCT);
    print("aa");
  }
}