import 'package:ainss/View/DashBoard.dart';
import 'package:flutter/material.dart';

class AddStudents extends StatelessWidget {
  const AddStudents({Key? key}) : super(key: key);

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
          CommonTextField(text: "Enter Student Roll Number", hinttext: "Roll Number"),
          
          SizedBox(
            height: 20,
          ),
          CommonTextField(text: "Enter Student Name", hinttext: "Student Name"),
          SizedBox(
            height: 20,
          ),
          CommonTextField(text: "Enter Father Name", hinttext: "Father Name"),
          SizedBox(
            height: 20,
          ),
          CommonTextField(
              text: "Enter Father Contact", hinttext: "Father Contact"),
          SizedBox(height: 20,),
          CommonTextField(text: "Enter Student Class", hinttext: "Enter Class"),
        Button(text: "Submit", onTap: (){})
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
  //TextEditingController controller;
  var autovalidatemode;
  CommonTextField({
    required this.text,
    required this.hinttext,
    //required this.controller,
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
          //controller: controller,
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
