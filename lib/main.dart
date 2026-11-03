import 'package:flutter/material.dart';

void main() {
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
  void initState() {
    super.initState();
    print('Hello to Flutter');
  }
  @override
  void dispose() {
    
    super.dispose();
  }
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login',
             style: TextStyle(color: Colors.purple),
          ),
          backgroundColor: const Color.fromARGB(255, 68, 6, 2),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue,
               Colors.purple],
               ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    hint: Text('Email'),
                    filled: true,
                    fillColor: Colors.white
                  ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: passwordController,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        showPassword =! showPassword;
                      });
                    }, icon: const Icon(Icons.remove_red_eye)),
                    hint: const Text("Password"),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  print(emailController.text);
                  print(passwordController.text);
                }, child: const Text('Login'),
                ),
                Text('$number'),
                ElevatedButton(onPressed: (){
                  setState(() {
                    number++;
                  });
                }, child: Text('Increament'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}