import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/pages/calculator_page.dart';
import 'package:testflutter/pages/football_page.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  late final List<Widget> pages;
  late final List<String> titles;

  HomeController() {
    final args = Get.arguments ?? {};
    final username = args["username"] ?? "Guest";

    pages = [
      CalculatorPage(),
      FootballPage(),
      ProfilePage(username: username),
    ];

    titles = [
      "Calculator Page",
      "Football Page",
      "Profile Page",
    ];
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController controller =
      Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Text(controller.titles[controller.currentIndex.value]),
          ),
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.currentIndex.value = index;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: "Calculator",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer),
                label: "Football",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ));
  }
}

class ProfilePage extends StatelessWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Ini Profile User: $username",
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
