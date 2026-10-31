import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello User!",
          style: TextStyle(
            color: const Color.fromARGB(255, 1, 30, 54),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          ),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          child: Column(
            children: [
              Text("Welcome To Your Dashboard",
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 34, 61),
                fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
              ),
              SizedBox(height: 40,),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person,
                                color: Colors.white,
                                size: 20,
                                ),
                                Text("Profile",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                ),
                              ],
                            ),
                           ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40,
                            color: Colors.purple,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.book,
                                color: Colors.white,
                                size: 20,
                                ),
                                Text("Course",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                ),
                              ],
                            ),
                           ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.event,
                                color: Colors.white,
                                size: 20,
                                ),
                                Text("Events",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                ),
                              ],
                            ),
                           ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40,
                            color: Colors.orange,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.settings,
                                color: Colors.white,
                                size: 20,
                                ),
                                Text("Settings",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                ),
                                
                              
                              ],
                            ),
                           ),
                        ),
                      ],
                    ),
                  ],
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}