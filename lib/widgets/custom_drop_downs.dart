import 'package:flutter/material.dart';
import 'package:jio_assignment/widgets/apply_leave_dropdown.dart';
import 'package:jio_assignment/widgets/holiday_dropdown.dart';

import 'custom_calender.dart';

// ignore: must_be_immutable
class DropDowns extends StatefulWidget {
  @override
  _DropDownsState createState() => _DropDownsState();
}

class _DropDownsState extends State<DropDowns> {
  bool flag1 = false;
  bool flag2 = false;
  bool flag3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Calender',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() => flag1 = !flag1);
                        },
                        icon: !flag1
                            ? Icon(Icons.arrow_drop_down_sharp)
                            : Icon(Icons.arrow_drop_up_sharp),
                        iconSize: 40,
                      ),
                    ],
                  ),
                  flag1
                      ? Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: CustomCalender(),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Apply Leave',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() => flag2 = !flag2);
                        },
                        icon: !flag2
                            ? Icon(Icons.arrow_drop_down_sharp)
                            : Icon(Icons.arrow_drop_up_sharp),
                        iconSize: 40,
                      ),
                    ],
                  ),
                  flag2
                      ? Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: ApplyLeaveDropDown(),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Holiday Calendar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() => flag3 = !flag3);
                        },
                        icon: !flag3
                            ? Icon(Icons.arrow_drop_down_sharp)
                            : Icon(Icons.arrow_drop_up_sharp),
                        iconSize: 40,
                      ),
                    ],
                  ),
                  flag3
                      ? Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: HolidayDropdown(),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
