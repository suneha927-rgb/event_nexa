import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});
  Rx<Color> color = Colors.yellow.obs;

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Girls'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Obx(
          () => Container(
            color: color.value,
            child: Column(
              children: [
                Image.asset('assets/images/3f.jpg'),
                Text('World'),
                ElevatedButton(onPressed: (){
                  color.value = color.value == Colors.yellow ? Colors.blue: Colors.yellow;
                }, child: Text('Login')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}