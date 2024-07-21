import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Color(0XFF4B6EB1),
          value: _isChecked1,
          onChanged: (bool? value) {
            setState(() {
              _isChecked1 = value ?? false;
            });
          },
        ),
        const Text('Designer', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(width: 40),
        Checkbox(
          activeColor: Color(0XFF4B6EB1),
          value: _isChecked2,
          onChanged: (bool? value) {
            setState(() {
              _isChecked2 = value ?? false;
            });
          },
        ),
        const Text('Developer', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      ]
    );
  }
}
