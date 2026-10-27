import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPassword = true;
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BS IT'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('Ali'),
              subtitle: Text('Hello'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(title: Text('Asad')),
            ListTile(title: Text('Akbar')),
            ListTile(title: Text('Ahmad')),
          ],
        ),
      ),
    );
  }
}