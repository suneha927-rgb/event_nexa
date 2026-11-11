import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

var showImage = 'assetes/images/image4.jpg'.obs;
var shoeColor = 'black'.obs;

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shoe Store',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => Container(
                child: Image.asset(showImage.value),
                width: double.infinity,
                height: 450,
                color: Colors.green,
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text('Sport Shoes',
                     style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                     ),
                    ),
                    Text('Premium Quality Shoes',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Rs. 2500',
                     style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                     ),
                    ),
                    SizedBox(height: 20,),
                    Text('Select Shoe Type',
                     style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                     ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: (){
                            showImage.value = 'assets/images/image4.jpg';
                          }, 
                          child: Text('Sport',
                            style: TextStyle(
                              fontSize: 26,
                            ),
                           ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: (){
                              showImage.value = 'assets/images/casual s.jpg';
                            }, 
                            child: Text('Causal',
                              style: TextStyle(
                                fontSize: 26,
                              ),
                             ),
                            ),
                        ),
                        ElevatedButton(
                          onPressed: (){
                            showImage.value = 'assets/images/sport.jpg';
                          }, 
                          child: Text('Running',
                            style: TextStyle(
                              fontSize: 26,
                            ),
                           ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text('Select Color',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),Row(
                      children: [
                    GestureDetector(
                      onTap: () {
                        shoeColor.value = 'black';
                        showImage.value = 'assets/images/black.png';
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        ),
                      ),
                    SizedBox(width: 20,),
                    GestureDetector(
                       onTap: () {
                        shoeColor.value = 'red';
                        showImage.value = 'assets/images/red.png';
                       },
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        ),
                      ),
                    SizedBox(width: 20,),
                    GestureDetector(
                       onTap: () {
                        shoeColor.value = 'blue';
                        showImage.value = 'assets/images/image4.jpg';
                       },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        ),
                      ),
                    SizedBox(width: 20,),
                    GestureDetector(
                       onTap: () {
                        shoeColor.value = 'green';
                        showImage.value = 'assets/images/green.png';
                       },
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        ),
                       ),
                     ],
                    ),
                    SizedBox(height: 20,),
                    Text('Select Size',
                     style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                     ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(onPressed: (){},
                         child: Text('39',
                         style: TextStyle(
                          fontSize: 30),
                          ),
                        ),
                        SizedBox(width: 20,),
                        ElevatedButton(onPressed: (){}, 
                        child: Text('40',
                          style: TextStyle(
                            fontSize: 30),
                         ),
                        ),
                        SizedBox(width: 20,),
                        ElevatedButton(onPressed: (){}, 
                        child: Text('41',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                         ),
                        ),
                        SizedBox(width: 20,),
                        ElevatedButton(onPressed: (){}, 
                        child: Text('42',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                         ),
                        ),
                        SizedBox(width: 20,),
                        ElevatedButton(onPressed: (){}, 
                        child: Text('43',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                         ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text('Quantity',
                     style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                     ),
                    ),
                    Row(children: [
                    SizedBox(height: 20,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline,)),
                    Text('1',
                     style: TextStyle(
                      fontSize: 30,
                     ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline)),
                    ],),
                    SizedBox(height: 30,),
                    Text('Total: Rs. 2500',
                     style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                     ),
                    ),
                  ],
                ),
                 
              ],
            ),
            SizedBox(height: 30,),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.black, Colors.black87,
                        ]),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: (){}, child: Text('Add To Cart',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                       ),
                      ),
                    ),
            
          ],
        ),
       ),
      ),
    );
  }
}