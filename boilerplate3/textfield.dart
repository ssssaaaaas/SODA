import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 350,
      height: 73,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Name',
          fillColor: Color(0XFFEEEEEE),
          filled: true,
        ),
      ),
    ); 
  }
}
