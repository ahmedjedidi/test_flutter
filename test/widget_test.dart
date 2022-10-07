// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fluttertest/modules/detailproduct/controllers/detail_product_controller.dart';
import 'package:fluttertest/modules/detailproduct/views/detail_product_view.dart';
import 'package:fluttertest/modules/products/controllers/product_controller.dart';
import 'package:fluttertest/modules/products/views/product_view.dart';
import 'package:fluttertest/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  

  testWidgets('detail Product testwidget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
   
    Get.lazyPut(()=>ProductController());
    await tester.pumpWidget(GetMaterialApp(
      getPages: AppPages.routes,
    home: ProductView()));
    await tester.pumpAndSettle(const Duration(seconds:3));
   final productController= ProductController();
   productController.navigateToDetail(1);
   
    await tester.pumpWidget(GetMaterialApp(
      getPages: AppPages.routes,
    home: DetailProductView()));
    expect(find.text('0'), findsNothing);
   // Verify that our counter starts at 1.
    expect(find.text('Add to Cart'), findsOneWidget);
    expect(find.text('1'), findsOneWidget);
   // detailProductController.increment();
    // Tap the '+' icon and trigger a frame.
    
    await tester.tap( find.byKey(const ValueKey('increment')));
    await tester.pumpAndSettle();
    // Verify that our counter has incremented.
    expect(find.text("2"), findsOneWidget);
  });

   test("counter update counter value",
      () {
    //get instance of DetailController    
    final controller = DetailProductController();
    expect(controller.counter.value, 1);

    
    //test increment function
    controller.increment();
    expect(controller.counter.value, 2);


    //test decrement function
    controller.decrement();
    expect(controller.counter.value, 1);

    controller.decrement();
    expect(controller.counter.value, 1);

   
  });
}
