import 'package:flutter/material.dart';

import '../screens/apply_leave_screen.dart';

class ApplyLeaveDropDown extends StatelessWidget {
  const ApplyLeaveDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: ListTile(
              title: Text('CL/Contingency Leave'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('6.0 Remaining'),
                  Text('Valid Till: 31/12/2021')
                ],
              ),
              trailing: Container(
                child: TextButton(
                  child: Text('APPLY'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApplyLeaveScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Optional Holiday'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3.0 Remaining'),
                  Text('Valid Till: 31/12/2021')
                ],
              ),
              trailing: Container(
                child: TextButton(
                  child: Text('APPLY'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApplyLeaveScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Special Privilage Leave'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('10.0 Remaining'),
                  Text('Valid Till: 31/12/2021')
                ],
              ),
              trailing: Container(
                child: TextButton(
                  child: Text('APPLY'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApplyLeaveScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('see more'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
