import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class CustomCalender extends StatelessWidget {
  // const CustomCalender({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
//     return Container(
//       child: CalendarCarousel(
//       weekendTextStyle: TextStyle(
//         color: Colors.red,
//       ),
//       thisMonthDayBorderColor: Colors.grey,
//       daysHaveCircularBorder: true,
//       showHeader: false,
//       // headerText: 'Custom Header',
//       weekFormat: false,
//       height: 400.0,

//       selectedDateTime: DateTime.now(),
//       showIconBehindDayText: true,
// //          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
//       customGridViewPhysics: NeverScrollableScrollPhysics(),
//       markedDateShowIcon: true,
//       markedDateIconMaxShown: 2,
//       selectedDayTextStyle: TextStyle(
//         color: Colors.white,
//       ),
//       todayTextStyle: TextStyle(
//         color: Colors.blue,
//       ),
//       todayButtonColor: Colors.orange,
//       todayBorderColor: Colors.orange,
//       minSelectedDate: DateTime.utc(1990),
//       maxSelectedDate: DateTime.utc(2030, 12, 12),
//       markedDateMoreShowTotal:
//           true, // null for not showing hidden events indicator
// //          markedDateIconMargin: 9,
// //          markedDateIconOffset: 3,
//     )
//     );
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime.utc(1990, 10, 16),
      lastDay: DateTime.utc(2050, 12, 31),
    );
  }
}
