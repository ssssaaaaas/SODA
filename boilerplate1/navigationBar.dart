import 'package:flutter/material.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({super.key});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 15, color: Color(0XFF666666));
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Copyright 2022 SODA ALL rights reserved.',
      style: optionStyle,
    ),
    Text(
      'Copyright 2022 SODA ALL rights reserved.',
      style: optionStyle,
    ),
    Text(
      'Copyright 2022 SODA ALL rights reserved.',
      style: optionStyle,
    ),
    Text(
      'Copyright 2022 SODA ALL rights reserved.',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.error), label: 'Information'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0XFF4B6EB1),
        onTap: _onItemTapped,
      ),
    );
  }
}
