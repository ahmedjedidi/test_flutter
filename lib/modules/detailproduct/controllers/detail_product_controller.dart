import 'package:get/get.dart';

class DetailProductController extends GetxController {
  var counter = 1.obs;

  @override
  void onInit() {
    super.onInit();
  }

  increment() {
    counter++;
  }

  decrement() {
    if (counter > 1) {
      counter--;
    }
  }
}
