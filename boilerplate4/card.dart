import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 215,
      child: Card.outlined(
        color: Colors.white,
        child: Column(
          children: [
            const ListTile(
              title: Text('Boilerplate 4', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              subtitle: Text(
                '\n어느덧 SODA 캠프 8일차가 되었네요!\n'
                '여기까지 달려오시느라 수고 많으셨어요 :)\n\n'
                '아래 있는 CANCEL과 SUBMIT은 버튼입니다 !!',          
                style: TextStyle(fontSize: 14, color: Color(0XFF666666)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('CANCEL', style: TextStyle(fontSize: 14, color: Color(0XFF4B6EB1))),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('SUBMIT', style: TextStyle(fontSize: 14, color: Color(0XFF4B6EB1))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
