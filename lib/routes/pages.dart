import 'package:get/get.dart';
import 'package:testflutter/login_page.dart';
import 'package:testflutter/pages/home_page.dart';
import 'package:testflutter/pages/calculator_page.dart';
import 'package:testflutter/pages/football_page.dart';
import 'package:testflutter/pages/football_edit_page.dart';
import 'package:testflutter/routes/routes.dart';
import 'package:testflutter/register_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.login, 
      page: () => const LoginPage()
      ),
    GetPage(
      name: AppRoutes.register, 
      page: () => const RegisterPage()
      ),
    GetPage(
      name: AppRoutes.home, 
      page: () => HomePage()
      ),
    GetPage(
      name: AppRoutes.calculator, 
      page: () => CalculatorPage()
      ),
    GetPage(
      name: AppRoutes.footballplayers, 
      page: () => FootballPage()
      ),
    GetPage(
      name: AppRoutes.footballEdit, 
      page: () => FootballEditPage()
      ),
  ];
}
