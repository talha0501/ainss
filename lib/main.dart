import 'package:ainss/Controller/AddStudent_controller.dart';
import 'package:ainss/View/Attendance.dart';
import 'package:ainss/View/DashBoard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
await di();
  runApp(MyApp());
}
di(){
   Get.lazyPut<AddStudent_controller>(() => AddStudent_controller());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
     @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: DashBoard(), 
      );
  }
}
