import 'package:flutter/material.dart';
import 'package:fluttertest/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
              ),
              onPressed: () {controller.navigateToProducts();},
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 13,
                  color: Get.theme.primaryColor,
                ),
              ),
            )));
  }
}
