import 'package:flutter/material.dart';
import 'package:fluttertest/modules/home/controllers/home_controller.dart';
import 'package:fluttertest/modules/home/views/button_signin.dart';
import 'package:fluttertest/modules/home/views/button_signup.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(top: 60),
                color: Color(0xFF070707),
                child: Column(children: [
                  Text("Solution of searching product from 2000",
                      style: TextStyle(fontSize: 15, color: Color(0xFFA7A8AB))),
                  SizedBox(height: 15),
                  Text(
                      "All that you need,\n All that you want \n just here at all !",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xFFEBEBEB))),
                  SizedBox(height: 30),
                  Image.asset(
                    "assets/sliderhome.png",
                    alignment: Alignment.center,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 20),
                  ButtonSignUp(controller: controller),
                  ButtonSignIn(controller: controller),
                  SizedBox(height: 20),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                          "By proceeding, I accept the Shopx Shopping Service and confirm that I have read Klarna's Privacy Policy. Links in the app are sponsored.",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xFF5b5859)))),
                ]))));
  }
}
