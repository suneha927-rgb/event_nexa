import 'package:evet_nexa/app_route.dart';
import 'package:flutter/material.dart';
import 'package:evet_nexa/register.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.toNamed(AppRoutes.home);
          

        }, child: Text('OpenDahboard')),
      ),
    );
  }
}