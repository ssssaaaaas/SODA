import 'package:flutter/material.dart';

class fab extends StatelessWidget {
  const fab({super.key});

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text('+ 버튼을 누르셨습니다.'),
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero
          ),
          actions: [
            TextButton(
              onPressed: () {Navigator.of(context).pop();},
              child: const Text('확인', style: TextStyle(color: Color(0XFF4B6EB1))),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(180, 0, 0, 60),
      child: FloatingActionButton(
        onPressed: () => _showAlertDialog(context),
        backgroundColor: const Color(0XFF182949),
        shape: const CircleBorder(), 
        child: const Icon(Icons.add, color: Colors.white),
      ),   
    );
  }
}
