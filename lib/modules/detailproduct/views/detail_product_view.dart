import 'package:flutter/material.dart';
import 'package:fluttertest/modules/detailproduct/controllers/detail_product_controller.dart';
import 'package:fluttertest/modules/products/controllers/product_controller.dart';
import 'package:get/get.dart';

class DetailProductView extends GetView<DetailProductController> {
  DetailProductView({Key? key}) : super(key: key);
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: Key('DetailProductView'),
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          title: Text("Detail Product"),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.black, fontSize: 17),
          actions: [
            GetX<ProductController>(
                builder: (val) => IconButton(
                      padding: EdgeInsets.zero,
                      icon: Center(
                        child: Icon(
                          Icons.favorite,
                          color: val.listProduct[Get.arguments].selected
                              ? Colors.red
                              : Color(0xFFB4B4B4),
                          size: 30,
                        ),
                      ),
                      onPressed: () {
                        val.listProduct[Get.arguments].selected =
                            !val.listProduct[Get.arguments].selected;
                        val.listProduct.value = [...val.listProduct.value];
                      },
                    ))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Image.asset(
            productController.listProduct[Get.arguments].image,
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(productController.listProduct[Get.arguments].name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 15),
                            decoration: BoxDecoration(
                                color: Color(0xFFCD3E20),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: Text(
                              '\$' +
                                  productController
                                      .listProduct[Get.arguments].price
                                      .toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ))
                      ]),
                  SizedBox(height: 20),
                  Text(productController.listProduct[Get.arguments].description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Color(0xFFA7A8AB))),
                  SizedBox(height: 20),
                  Container(
                    color: Color(0xFFA7A8AB),
                    height: 0.5,
                    width: double.infinity,
                  ),
                  SizedBox(height: 20),
                  Obx(() => Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFF6F6F6)),
                            child: Row(
                              children: [
                                GestureDetector(
                                  key: Key('decrement'),
                                    onTap: () => controller.decrement(),
                                    child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 20,
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 16,
                                        ))),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 3),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3, vertical: 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.white),
                                  child: Text(
                                    controller.counter.toString(),
                                    key: Key('counter'),
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                                GestureDetector(
                                    key: ValueKey('increment'),
                                    onTap: () => controller.increment(),
                                    child: CircleAvatar(                             
                                        backgroundColor: Colors.black,
                                        radius: 20,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ))),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: SizedBox(
                                      height: 60,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF373737),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // <-- Radius
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Add to Cart",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xFFEBEBEB),
                                          ),
                                        ),
                                      ))))
                        ],
                      ))
                ]),
              ))
        ])));
  }
}
