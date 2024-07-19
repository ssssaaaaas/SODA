import 'package:flutter/material.dart';

class bottom extends StatelessWidget {
  const bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.fromLTRB(17, 18, 0, 30)),
        Align(
          alignment: Alignment.topLeft,
          child: OutlinedButton(
            onPressed: () {}, 
            style: OutlinedButton.styleFrom(backgroundColor: const Color(0XFFFFE8E8), side: const BorderSide(color: Colors.transparent),), 
            child: const Text('Outlined Button', style: TextStyle(color: Color(0XFF182949)))
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 180),
          child: FloatingActionButton(
            onPressed: () {}, 
            backgroundColor: const Color(0XFF182949),
            shape: const CircleBorder(), 
            child: const Icon(Icons.add, color: Colors.white),
          ),   
        ),
      ]
    );
  }
}
