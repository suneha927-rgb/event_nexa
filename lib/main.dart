import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
          width: 200,
          child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
             decoration: InputDecoration(
                enabledBorder: OutlineInputBorder()
              ), 
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: Text('Login'))
          ],
        )
        ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
