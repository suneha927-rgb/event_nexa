import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware{
  @override
 RouteSettings? redirect (String? route) {
   bool isLoggedIn = false;
   if(isLoggedIn){
    return const RouteSettings(name: '/login');
   }
  }
}