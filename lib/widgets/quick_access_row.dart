import 'package:flutter/material.dart';

class QuickAccessRow extends StatelessWidget {
  // const QuickAccessRow({ Key? key }) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            borderOnForeground: false,
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(20),
            child: Container(
              // height: 125,
              width: 125,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    'Absent Days For Current & Last Month',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Divider(
                    height: 12,
                    thickness: 3,
                    endIndent: 80,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.calendar_today, size: 20, color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(20),
            child: Container(
              // height: 125,
              width: 125,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    'Leave & Regularization History',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Divider(
                    height: 12,
                    thickness: 3,
                    endIndent: 80,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.timer, size: 20, color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(20),
            child: Container(
              // height: 125,
              width: 125,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    'Time Report - Team',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Divider(
                    height: 12,
                    thickness: 3,
                    endIndent: 80,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.people_outline, size: 20, color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
