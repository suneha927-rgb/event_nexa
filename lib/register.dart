import 'package:evet_nexa/register.dart';
import 'package:flutter/material.dart';
import 'package:evet_nexa/login.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
bool showPassword = true;
final passwordController = TextEditingController();



  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.yellow,Colors.pinkAccent]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                TextField(style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
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
                 TextField(style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.circle),
                    hintText: 'Confirmpassword',
                  ),
                ),
                SizedBox(height:10,),
                ElevatedButton(
                  onPressed: (){
                     print(passwordController.text);
                  }, child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}