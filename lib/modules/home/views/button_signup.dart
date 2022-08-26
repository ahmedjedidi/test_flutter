import 'package:flutter/material.dart';
import 'package:fluttertest/modules/home/controllers/home_controller.dart';

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF373737),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
              ),
              onPressed: () {controller.navigateToProducts();print("aa");},
              child: Text(
                "Create an account",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFFEBEBEB),
                ),
              ),
            )));
  }
}
