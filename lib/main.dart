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
List<String> students = [
  'abc', 'xyz', 'ijk', '123'
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BS IT'),
        ),
        body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index)  {
            return Text(students[index]);
           },
           ),
      ),
    );
  }
}