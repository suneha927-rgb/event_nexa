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
List<String> students = [
  'Saima', 'Suneha', 'Kainat', 'Laiba', 'Urwa', 'Maryam', 'Muskan', 'Malaika', 'Saima', 'Sneha', 'Tayyiba',
  'Misbah', 'Javeria', 'Eman', 'Rabia', 'Mahnoor', 'Aniqa', 'Mehak', 'Zainab', 'Hifza', 'Insha', 'Anfaal',
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        title: Text(students[index]),
                        subtitle: Text("hello Good Morning"),
                        trailing: Column(
                          children: [
                            Text("09:00 am"),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.green,
                              child: Text(
                                '1', style: TextStyle(
                                  color: Colors.white,
                                fontSize: 12,
                              ),
                             ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.chat),),
      ),
    );
  }
}