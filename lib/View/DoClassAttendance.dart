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
                padding: EdgeInsets.symmetric(vertical: 10),
                  itemCount: 15,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: StudentnameattendanceWidget(
                        sname: "Talha",
                        rollnum: 1,
                      ),
                    );
                  }))
        ],
      )),
    );
  }
}

class StudentnameattendanceWidget extends StatelessWidget {
  String sname;
  int rollnum;
  StudentnameattendanceWidget({required this.sname,required this.rollnum});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(rollnum.toString()),
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
