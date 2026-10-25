import 'package:flutter/material.dart';

void main(){
  runApp(MyAPp());
}

class MyAPp extends StatelessWidget {
  const MyAPp({Key? key}):super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar:AppBar(
       backgroundColor: Colors.blue,
       title: Text('My App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(10),
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            margin: EdgeInsets.all(10),
            height: 100,
          ),
           Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            height: 100,
          ),
          Container(
            color: Colors.purple,
            margin: EdgeInsets.all(10),
            height: 100,
          ),
        ],
      ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(10),
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            margin: EdgeInsets.all(10),
            height: 100,
          ),
           Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            height: 100,
          ),
          Container(
            color: Colors.purple,
            margin: EdgeInsets.all(10),
            height: 100,
          ),
        ],
      ),
        ],
      ),
      
    ),
  );
}
}
