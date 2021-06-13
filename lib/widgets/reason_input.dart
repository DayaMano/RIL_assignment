import 'package:flutter/material.dart';

class ReasonInput extends StatefulWidget {
  const ReasonInput({ Key? key }) : super(key: key);

  @override
  _ReasonInputState createState() => _ReasonInputState();
}

class _ReasonInputState extends State<ReasonInput> {
  

  List<String> reasons = ['Sick', 'Work from Home', 'Business Leave', 'Vacation'];

  String dropdownValue = 'Sick';
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
      items: reasons.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}