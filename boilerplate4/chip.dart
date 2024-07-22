import 'package:flutter/material.dart';

class chip extends StatefulWidget {
  const chip({super.key});

  @override
  State<chip> createState() => _chipState();
}

class _chipState extends State<chip> {
  int selectedChoiceIndex = 0;

  void handleChoiceSelected(int index) {
    setState(() {
      selectedChoiceIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ChoiceChip(
          label: Text(
            'SODA',
            style: TextStyle(
              color: selectedChoiceIndex == 0 ? Colors.white : Colors.black,
            ),
          ),
          selected: selectedChoiceIndex == 0,
          onSelected: (selected) {
            handleChoiceSelected(0);
          },
          backgroundColor: const Color(0XFFEEEEEE),
          selectedColor: const Color(0XFF182949),
          showCheckmark: false,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        ),
        const SizedBox(width: 10),

        ChoiceChip(
          label: Text(
            'CAMP',
            style: TextStyle(
              color: selectedChoiceIndex == 1? Colors.white : Colors.black,
            ),
          ),
          selected: selectedChoiceIndex == 1,
          onSelected: (selected) {
            handleChoiceSelected(1);
          },
          backgroundColor: const Color(0XFFEEEEEE),
          selectedColor: const Color(0XFF182949),
          showCheckmark: false,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        ),
        const SizedBox(width: 10),

        ChoiceChip(
          label: Text(
            'FUN',
            style: TextStyle(
              color: selectedChoiceIndex == 2 ? Colors.white : Colors.black,
            ),
          ),
          selected: selectedChoiceIndex == 2,
          onSelected: (selected) {
            handleChoiceSelected(2);
          },
          backgroundColor: const Color(0XFFEEEEEE),
          selectedColor: const Color(0XFF182949),
          showCheckmark: false,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        ),
        const SizedBox(width: 10),

        ChoiceChip(
          label: Text(
            'Flutter',
            style: TextStyle(
              color: selectedChoiceIndex == 3 ? Colors.white : Colors.black,
            ),
          ),
          selected: selectedChoiceIndex == 3,
          onSelected: (selected) {
            handleChoiceSelected(3);
          },
          backgroundColor: const Color(0XFFEEEEEE),
          selectedColor: const Color(0XFF182949),
          showCheckmark: false,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        ),
        const SizedBox(width: 10),

      ],
    );
  }
}
