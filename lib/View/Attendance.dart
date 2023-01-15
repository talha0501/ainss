import 'package:ainss/View/DoClassAttendance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class Attendance extends StatelessWidget {
  Attendance({Key? key}) : super(key: key);
  String message = "This is a test message!";
  List<String> recipents = ["+923345759955", "+923173035573"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10),
            //width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10),
                itemCount: 12,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                      // onTap: () async {
                      //   if (await Permission.sms.request().isGranted) {
                      //     // Either the permission was already granted before or the user just granted it.
                      //     String _result = await sendSMS(
                      //             message:
                      //                 "This is a test message! talha $message",
                      //             recipients: [
                      //               "+923345759955",
                      //               "+923173035573"
                      //             ],
                      //             sendDirect: true)
                      //         .catchError((onError) {
                      //       print(onError);
                      //     });
                      //     print(_result);
                      //   }
                      // },
                     onTap: () {
                       Get.to(()=>DoClassAttendance());
                     },
                      child: ClassWidget(index: index,));
                }),
          ),
        ],
      )),
    );
  }
}

class ClassWidget extends StatelessWidget {
  int index;
   ClassWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.blue)),

      // width: MediaQuery.of(context).size.width * .4,
      // height: MediaQuery.of(context).size.height * .2,
      child: Center(child: Text(index==0? "Nursery":index==1? "Prep": (index-1).toString()),),
    );
  }
}
