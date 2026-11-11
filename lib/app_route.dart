import 'package:evet_nexa/auth_middleware.dart';
import 'package:evet_nexa/home.dart';
import 'package:evet_nexa/login.dart';
import 'package:evet_nexa/register.dart';
import 'package:get/get.dart';


class AppRoutes {

  static const home = '/';
  static const login = '/login';
  static const register = '/register';

  static final pages = [
    GetPage(
      name: home, 
      page: () => HomeScreen(),
      middlewares: [AuthMiddleware()]
      ),
      GetPage(name: login, page: () => LoginScreen(),
      middlewares: [AuthMiddleware()]),
      GetPage(name: register, page: () => RegisterScreen(),
      middlewares: [AuthMiddleware()]
    ),
  ];
}