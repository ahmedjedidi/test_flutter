import 'package:flutter/material.dart';
import 'package:fluttertest/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_driver/driver_extension.dart';


void main() {
   // enableFlutterDriverExtension();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primaryColor: const Color(0xFF070707),
        scaffoldBackgroundColor: Color(0xFF070707),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: const Color(0xFF070707),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
    );
  }
}

