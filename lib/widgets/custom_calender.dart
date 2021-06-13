import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalender extends StatelessWidget {
  // const CustomCalender({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime.utc(1990, 10, 16),
      lastDay: DateTime.utc(2050, 12, 31),
    );
  }
}
