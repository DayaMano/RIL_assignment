import 'package:flutter/material.dart';


import 'widgets/quick_access_row.dart';
import 'widgets/app_drawer.dart';
import 'widgets/custom_calender.dart';
import 'widgets/custom_drop_downs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Leave & Attendance',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text('Leave & Attendance'),
        ),
        drawer: AppDrawer(),
        body: Container(
          child: Column(
            children: [
              QuickAccessRow(),
              DropDowns(),
            ],
          ),
        ),
      ),
    );
  }
}
