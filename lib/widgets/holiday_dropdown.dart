import 'package:flutter/material.dart';

class HolidayDropdown extends StatelessWidget {
  // const HolidayDropdown({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: ListTile(
              title: Text('15th August | Sun', style: TextStyle(color: Colors.green[700], fontSize: 20),),
              subtitle: Text('Independence Day'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('10th september | Fri', style: TextStyle(color: Colors.green[700], fontSize: 20),),
              subtitle: Text('Ganesh Chaturthi')
            ),
          ),
          Card(
            child: ListTile(
              title: Text('2nd October | Sat', style: TextStyle(color: Colors.green[700], fontSize: 20),),
              subtitle: Text('Gandhi Jayanti')
            ),
          ),
          TextButton(child: Text('See All Holidays'), onPressed: () {},),
        ],
      ),
    );
  }
}