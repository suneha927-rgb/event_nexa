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
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  bool showPassword = true;
  int number = 0;

  @override
  void initState(){
    super.initState();

    print('Hekllo to Flutter BS IT');
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             TextField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder()
              ),
             ),
             TextField(
              controller: passwordController,
              obscureText: showPassword,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(Icons.remove_red_eye)
                ),
                border: OutlineInputBorder()
              ),
             ),
             ElevatedButton(
                onPressed: (){
                  print(emailController.text);
                  print(passwordController.text);
                },
                child: Text('Login')
             ),

             Text('$number'),
             ElevatedButton(
              onPressed: (){
                setState(() {
                  number++;
                });

              },
              child: Text('Increment')
             ),
            ],
          ),
        ),
      ),
    );
  }
}