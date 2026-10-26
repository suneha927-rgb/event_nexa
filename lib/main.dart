import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children:[
                  Expanded(child: Container(
                    color: Colors.red,
                  ),),
                  Expanded(
                    flex: 3,
                    child: Container(
                    color: Colors.green,
                  ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                    color: Colors.yellow,
                  ),
                  ),
                  
                ],
              
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children:[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: ,
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.purple,
                    ),
                  ),
                ],
              
              ),
            ),
          ],
        )
      ),
    );
  }
}