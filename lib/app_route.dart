import 'package:get/get.dart';
import 'package:evet_nexa/login.dart';
import 'package:evet_nexa/register.dart';

class AppRoute {

  static const register = '/register';
  static const login = '/login';

  static final pages = [
   GetPage(name: login, page: () => LoginScreen()),

   GetPage(name: register, page: () => RegisterScreen()),
  ];
}