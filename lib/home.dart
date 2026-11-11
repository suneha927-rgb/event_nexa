import 'package:evet_nexa/app_route.dart';
import 'package:flutter/material.dart';
import 'package:evet_nexa/home.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.toNamed(AppRoutes.login);

        }, child: Text('WelCome to Home')),
      ),
    );
  }
}