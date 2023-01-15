import 'package:ainss/View/AddStudents.dart';
import 'package:ainss/View/Attendance.dart';
import 'package:ainss/View/DoClassAttendance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("AINSS"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.jpg",
              width: 200,
              height: 200,
            ),
          Button(text: "Add Student",onTap: (){Get.to(()=>AddStudents()); }),
          Button(text: "Take Attandance",onTap: (){Get.to(()=>Attendance());}),
          //Button(text: "View Student",onTap: (){}),
          Button(text: "Diary",onTap: (){}),
          ],
        ),
      ),
    );
  }
}
class Button extends StatelessWidget {
  var onTap;
  String text; Button({required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(15)),  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20), width: MediaQuery.of(context).size.width,height: 50,
      child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}