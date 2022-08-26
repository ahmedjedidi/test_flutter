
import 'package:fluttertest/modules/detailproduct/bindings/detail_product_binding.dart';
import 'package:fluttertest/modules/detailproduct/views/detail_product_view.dart';
import 'package:fluttertest/modules/home/bindings/home_binding.dart';
import 'package:fluttertest/modules/home/views/home_view.dart';
import 'package:fluttertest/modules/products/bindings/product_binding.dart';
import 'package:fluttertest/modules/products/views/product_view.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.Home;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
     GetPage(
      name: _Paths.PRODUCT,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.DETAILPRODUCT,
      page: () => DetailProductView(),
      binding: DetailProductBinding(),
    ),
    
  ];
}