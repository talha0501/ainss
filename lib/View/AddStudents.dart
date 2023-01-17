import 'package:ainss/Controller/AddStudent_controller.dart';
import 'package:ainss/View/DashBoard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddStudents extends StatelessWidget {
   AddStudents({Key? key}) : super(key: key);
    AddStudent_controller addstudentcontroller =
        Get.find<AddStudent_controller>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Add Student"),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
              "assets/images/logo.jpg",
              width: 200,
              height: 200,
            ),
          SizedBox(
            height: 20,
          ),
          CommonTextField(text: "Enter Student Roll Number", hinttext: "Roll Number",controller: addstudentcontroller.rollnumber,),
          
          SizedBox(
            height: 20,
          ),
          CommonTextField(text: "Enter Student Name", hinttext: "Student Name",controller: addstudentcontroller.sname,),
          SizedBox(
            height: 20,
          ),
          CommonTextField(text: "Enter Father Name", hinttext: "Father Name",controller: addstudentcontroller.fname,),
          SizedBox(
            height: 20,
          ),
          CommonTextField(
              text: "Enter Father Contact", hinttext: "Father Contact",controller: addstudentcontroller.phno,),
          SizedBox(height: 20,),
          CommonTextField(text: "Enter Student Class", hinttext: "Enter Class",controller: addstudentcontroller.sclass,),
        Button(text: "Submit", onTap: () async{
          String name,roll,fname,cnum,classname;
          name=addstudentcontroller.sname.text;
          roll=addstudentcontroller.rollnumber.text;
          fname=addstudentcontroller.fname.text;
          cnum=addstudentcontroller.phno.text;
          classname=addstudentcontroller.sclass.text;
        CollectionReference student =addstudentcontroller.firestore.collection('student');
        await student.add({'Student Name': '$name','Student Roll Num': '$roll','Father Name': '$fname','Contact Number': '$cnum','Class Name': '$classname',});
        })
        ],
      )),
    );
  }
}

class CommonTextField extends StatelessWidget {
  String hinttext;
  String text;
  dynamic validator;
  bool obsecure;
  TextEditingController controller;
  var autovalidatemode;
  CommonTextField({
    required this.text,
    required this.hinttext,
    required this.controller,
    this.validator,
    this.obsecure = false,
    this.autovalidatemode,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0XFFF5F5FA),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
        ),
        child: TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obsecure,
          autovalidateMode: autovalidatemode,
          decoration: InputDecoration(
              border: InputBorder.none, label: Text(text), hintText: hinttext),
        ),
      ),
    );
  }
}
