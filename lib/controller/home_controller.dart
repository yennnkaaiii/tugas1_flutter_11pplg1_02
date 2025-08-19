import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/pages/calculator_page.dart';
import 'package:testflutter/pages/football_page.dart';
import 'package:testflutter/pages/profil_page.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  late final List<Widget> pages;
  late final List<String> titles;

  HomeController() {
    final args = Get.arguments ?? {};
    final username = args["username"] ?? "Guest";
    final email = args["email"];
    final gender = args["gender"];

    // Convert tanggalLahir ke DateTime
    DateTime? tanggalLahir;
    if (args["tanggalLahir"] != null) {
      if (args["tanggalLahir"] is String) {
        tanggalLahir = DateTime.tryParse(args["tanggalLahir"]);
      } else if (args["tanggalLahir"] is DateTime) {
        tanggalLahir = args["tanggalLahir"];
      }
    }

    pages = [
      CalculatorPage(),
      FootballPage(),
      ProfilePage(
        username: username,
        email: email,
        gender: gender,
        tanggalLahir: tanggalLahir,
      ),
    ];

    titles = [
      "Calculator Page",
      "Football Page",
      "Profile Page",
    ];
  }
}
