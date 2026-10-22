
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 84, 165, 231),
          title: const Text('My App'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.purple,
                height: 100,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.brown,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
