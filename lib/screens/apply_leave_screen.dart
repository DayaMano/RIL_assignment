import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_field/date_field.dart';

import '../widgets/custom_calender.dart';
import '../widgets/type_of_leave_input.dart';
import '../widgets/reason_input.dart';

class ApplyLeaveScreen extends StatefulWidget {
  // const ApplyLeaveScreen({ Key? key }) : super(key: key);

  @override
  _ApplyLeaveScreenState createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends State<ApplyLeaveScreen> {
  DateTime? selectedDate;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave & Attendance"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Card(
              color: Colors.blue,
              child: Text(
                'Apply Leave',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            CustomCalender(),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From Date*',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText:
                              DateFormat('dd-MM-yyyy').format(DateTime.now()),
                        ),
                        keyboardType: TextInputType.datetime,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To Date*',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText:
                              DateFormat('dd-MM-yyyy').format(DateTime.now()),
                        ),
                        keyboardType: TextInputType.datetime,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Type Of Leave',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      Container(
                        width: double.infinity,
                        child: LeaveTypeInput(),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                        value: this.check,
                        onChanged: (value) {
                          setState(() {
                            this.check = value!;
                          });
                        },
                      ),
                      Text("Apply for Half Day")
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reason',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      Container(
                        width: double.infinity,
                        child: ReasonInput(),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlineButton(
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      RaisedButton(
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
