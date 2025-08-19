import 'package:get/get.dart';
import 'package:testflutter/login_page.dart';
import 'package:testflutter/register_page.dart';
import 'package:testflutter/pages/home_page.dart';
import 'package:testflutter/pages/calculator_page.dart';
import 'package:testflutter/pages/football_page.dart';
import 'package:testflutter/pages/football_edit_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String calculator = '/calculator';
  static const String footballplayers = '/footballplayers';
  static const String footballEdit = '/footballEdit';


  static final routes = [
    GetPage(name: login, page: () => const LoginPage()),
    GetPage(name: register, page: () => const RegisterPage()),
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: calculator, page: () => CalculatorPage()),
    GetPage(name: footballplayers, page: () => FootballPage()),
    GetPage(name: footballEdit, page: () => FootballEditPage()),
  ];
}
