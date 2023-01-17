

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddStudent_controller extends GetxController{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  TextEditingController sname=TextEditingController();
  TextEditingController fname=TextEditingController();
  TextEditingController sclass=TextEditingController();
  TextEditingController phno=TextEditingController();
  TextEditingController rollnumber=TextEditingController();
  
  
}