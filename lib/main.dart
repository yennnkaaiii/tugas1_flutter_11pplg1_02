import 'package:flutter/material.dart';
import 'package:testflutter/login_page.dart';
import 'package:get/get.dart';
import 'package:testflutter/pages/calculator_page.dart';
import 'package:testflutter/routes/pages.dart';
import 'package:testflutter/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.Calculator,
      getPages: AppPages.pages,
    );
  }
}
