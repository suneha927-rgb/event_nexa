import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculateScreen(),
    ),
  );
}
class CalculateScreen extends StatefulWidget {
  const CalculateScreen({super.key});

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {

  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();

  String output = 'Enter two Numbers';

  bool loading = false;


  Future<String> calculate(String a, String b) async{
    await Future.delayed(Duration(seconds: 2));

    int number1 = int.parse(a);
    int number2 = int.parse(b);

    int result =number1+number2;

    return 'Result: $result';
  }

  Future<void> calculateResult() async{
    try{
      
      String result = await calculate(
        num1Controller.text,
        num2Controller.text,
      );

      print('test');

      setState(() {
        output = result;
      });
    }catch(e) {
        print(e);
        setState(() {
          output = 'Enter correct Number';
        });
   
  }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future and Exception Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'First Input',
                border: OutlineInputBorder(),
              ),
            ), 
            SizedBox(height: 15,),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Second Input',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15,),

            ElevatedButton(onPressed: loading ? null : calculateResult,
            child: Text('Calculate'),
            ),

            SizedBox(height: 15,),
            
            if(loading)
            CircularProgressIndicator(),

            Text(
              output,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
