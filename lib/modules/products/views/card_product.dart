import 'package:flutter/material.dart';
import 'package:fluttertest/modules/products/controllers/product_controller.dart';
import 'package:get/get.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
    required this.controller,
    required this.index,
  }) : super(key: key);
  final ProductController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: 250,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Card(
                  margin: EdgeInsets.all(20),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    controller.listProduct[index].image,
                    fit: BoxFit.contain,
                  )),
              Positioned(
                  top: 30,
                  right: 30,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFCD3E20),
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      child: Text(
                        '\$' + controller.listProduct[index].price.toString(),
                        style: TextStyle(color: Colors.white),
                      ))),
            ],
          )),
      Flexible(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        controller.listProduct[index].name,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    Obx(() => Flexible(
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Center(
                              child: Icon(
                                Icons.favorite,
                                color:
                                    controller.listProduct.value[index].selected
                                        ? Colors.red
                                        : Color(0xFFB4B4B4),
                                size: 30,
                              ),
                            ),
                            onPressed: () {
                              controller.listProduct[index].selected =
                                  !controller.listProduct[index].selected;
                              controller.listProduct.value = [
                                ...controller.listProduct.value
                              ];
                            },
                          ),
                        ))
                  ])))
    ]);
  }
}
