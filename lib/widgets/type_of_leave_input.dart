import 'package:flutter/material.dart';

class LeaveTypeInput extends StatefulWidget {
  const LeaveTypeInput({Key? key}) : super(key: key);

  @override
  _LeaveTypeInputState createState() => _LeaveTypeInputState();
}

class _LeaveTypeInputState extends State<LeaveTypeInput> {
  List<String> typeOfLeave = [
    'Contingency Leave',
    'optional Leave',
    'sick Leave'
  ];
  String dropdownValue = 'Contingency Leave';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: typeOfLeave.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
