import 'package:evet_nexa/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:evet_nexa/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RxInt counter = 1.obs;
  final box = GetStorage();

 @override
  void initState() {
    super.initState();
    counter.value = box.read('counter') ?? 0;
  }

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.login,
      getPages: AppRoute.pages,
        //
      );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.counter,
    required this.box,
  });

  final RxInt counter;
  final GetStorage box;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Center(
        child: Column(
          children: [
            Text('Counter:${counter.value}'),
            ElevatedButton(
              onPressed: (){
                box.remove('counter.value');
                   counter.value--;
              }, child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}