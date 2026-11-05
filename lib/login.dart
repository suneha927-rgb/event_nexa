import 'package:evet_nexa/login.dart';
import 'package:flutter/material.dart';
import 'package:evet_nexa/register.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
bool showPassword = true;
final passwordController = TextEditingController();



  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue,Colors.pinkAccent]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height:10,),
                TextField(
                  controller: passwordController,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: (){ 
                         setState(() {
                           showPassword = !showPassword;
                         });
                    }, icon: Icon(Icons.remove_red_eye),
                   ),
                  ),
                ),
                SizedBox(height:10,),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(colors: [Colors.orange,Colors.green,]),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: (){
                       print(passwordController.text);
                    }, child: Text('Login', style: TextStyle(
                      color: Colors.white,
                     ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}