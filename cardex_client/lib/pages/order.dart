import 'package:flutter/material.dart';


List category =['One', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>(
  (String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

class ToOrderPage extends StatefulWidget {
  const ToOrderPage({Key? key}) : super(key: key);

  @override
  State<ToOrderPage> createState() => _ToOrderPageState();
}

class _ToOrderPageState extends State<ToOrderPage> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          style: const TextStyle(color: Colors.blue),
          onChanged: (String? newValue) {
            setState(() { dropdownValue = newValue!; });
          },
          items: <String>[
            'One', 
            'Two', 
            'Free', 
            'Four',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}