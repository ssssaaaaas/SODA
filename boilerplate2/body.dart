import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(14, 13, 12, 4),
          child: Card.outlined(
            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey, width: 1),),
            child: ListTile(
              leading: Icon(Icons.airplay_outlined, color: Colors.grey),
              title: Text('This is List tile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text('List tile 1', style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(14, 4, 12, 4),
          child: Card.outlined(
            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey, width: 1),),
            child: ListTile(
              leading: Icon(Icons.airplay_outlined, color: Colors.grey),
              title: Text('This is List tile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text('List tile 2', style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(14, 4, 12, 4),
          child: Card.outlined(
            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey, width: 1),),
            child: ListTile(
              leading: Icon(Icons.airplay_outlined, color: Colors.grey),
              title: Text('This is List tile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text('List tile 3', style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padd
            padding: const EdgeInsets.fromLTRB(14, 4, 12, 8),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
              foregroundColor: const Color(0XFF182949), textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            child: const Text('TEXT BUTTON'),
          ),
         ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(17, 110, 0, 0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Ink(
              decoration: const ShapeDecoration(color: Color(0XFF182949), shape: CircleBorder(),),
              child: IconButton(
                icon: const Icon(Icons.settings),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
