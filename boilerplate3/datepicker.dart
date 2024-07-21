import 'package:flutter/material.dart';

class datepicker extends StatefulWidget {
  const datepicker({super.key});

  @override
  State<datepicker> createState() => _datepickerState();
}

class _datepickerState extends State<datepicker> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2001),
      lastDate: DateTime(2030),
      helpText: 'SELECT DATE',
      cancelText: 'CANCEL',
      confirmText: 'OK',
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            colorScheme: const ColorScheme.light(primary: Colors.blue),
            dialogBackgroundColor: Colors.white,
          ),
          child: AlertDialog(
            backgroundColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            content: SizedBox(
              width: 330,
              height: 500,
              child: child,
            ),
          ),
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {_selectedDate = picked;});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('버튼을 눌러 날짜를 선택해주세요.'),
        const SizedBox(width: 8),
        OutlinedButton(
          onPressed: () => _selectDate(context),
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: const Color(0XFF4B6EB1),
            side: const BorderSide(color: Color(0XFFE4E4E4)),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: const Text('SELECT DATE'),
        ),
      ],
    );
  }
}
