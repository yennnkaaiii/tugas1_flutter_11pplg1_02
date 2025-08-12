import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/pages/calculator_page.dart';
import 'package:testflutter/pages/football_edit_page.dart';
import 'package:testflutter/pages/football_page.dart';
import 'package:testflutter/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.Calculator,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: AppRoutes.footballplayers,
      page: () => FootballPage(),
    ),
    GetPage(
      name: AppRoutes.footballEdit,
      page: () => FootballEditPage(),
    ),
    // Add other routes here
  ];

}