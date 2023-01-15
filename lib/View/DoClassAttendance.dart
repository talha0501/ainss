import 'package:flutter/material.dart';

class DoClassAttendance extends StatelessWidget {
  const DoClassAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 1"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return StudentnameattendanceWidget(
                      sname: "Talha",
                    );
                  }))
        ],
      )),
    );
  }
}

class StudentnameattendanceWidget extends StatelessWidget {
  String sname;
  StudentnameattendanceWidget({required this.sname});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(sname),
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.green),
          child: Center(
            child: Text(
              "P",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.red),
          child: Center(
            child: Text(
              "A",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
