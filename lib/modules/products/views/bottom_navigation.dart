import 'package:flutter/material.dart';
import 'package:fluttertest/modules/products/controllers/product_controller.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ProductController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(13)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ""
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.apps),
                label: ""
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.shopping_bag_outlined),
              ),
            ],
          ),
        )));
  }
}
