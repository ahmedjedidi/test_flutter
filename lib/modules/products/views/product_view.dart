import 'package:flutter/material.dart';
import 'package:fluttertest/modules/products/views/card_product.dart';
import 'package:fluttertest/modules/products/views/card_widget.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';
import 'bottom_navigation.dart';

class ProductView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: Key('ProductView'),
        backgroundColor: Color(0xFFEBEBEB),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: TextFormField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 3,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 3,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 3,
                        )),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search here",
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              CardWidget(),
              SizedBox(height: 20),
              Obx(
                () => controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SizedBox(
                        height: 140.0,
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.listCategory.length,
                          itemBuilder: (BuildContext context, int index) =>
                              Card(
                                color: (controller.listCategory[index].selected)? Color(0xFF89a9d1): Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                                margin: EdgeInsets.all(15),
                            child:Padding(padding: EdgeInsets.all(10),child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                      controller.listCategory[index].image,
                                      width: 50,height: 50,
                                      color: (controller.listCategory[index].selected)? Colors.white :Colors.black,
                                      ),
                                  Text(controller.listCategory[index].name,style: TextStyle(  color: (controller.listCategory[index].selected)? Colors.white :Colors.black),)
                                ]),
                          ),
                        ),
                      ),
              )),
               Obx(() => controller.isLoading.value
                ? const Center(
              child: CircularProgressIndicator(
                color: Color(0xFFA71B12),
              ),
            )
                : GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 130/210,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(controller.listProduct.length,(index){
                  return   GestureDetector(
                   key: (index==1) ? Key('CardProductButton'): null,
                    child: CardProduct(controller:controller, index: index,),onTap: (){
                            controller.navigateToDetail(index);
                    });
                }),
              ),
            )
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigation(controller: controller));
  }
}
