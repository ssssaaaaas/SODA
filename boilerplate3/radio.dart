import 'package:flutter/material.dart';

enum Gender { Male, Female }

class radio extends StatefulWidget {
  const radio({super.key});

  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  Gender? _character = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Male', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            leading: Radio<Gender>(
              activeColor: Color(0XFF4B6EB1),
              value: Gender.Male,
              groupValue: _character,
              onChanged: (Gender? value) {
                setState(() {_character = value;});
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Female', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            leading: Radio<Gender>(
              activeColor: Color(0XFF4B6EB1),
              value: Gender.Female,
              groupValue: _character,
              onChanged: (Gender? value) {
                setState(() {_character = value;});
              },
            ),
          ),
        ),
        const SizedBox(width: 100),
      ],
    );
  }
}
