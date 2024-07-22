import 'package:flutter/material.dart';
import 'card.dart';
import 'chip.dart';
import 'bottom.dart';
import 'fab.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'boilerplate',
      home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFF182949),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('SODA', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0XFF182949)),
              child: Text('SODA', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Color(0XFF7B7A7A),),
              title: Text('Icon : favorite', style: TextStyle(color: Color(0XFF7B7A7A),),),
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 290, 10),
            child: Text('DAY 8', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),            
            ),
          card(),
          Padding(
            padding: EdgeInsets.only(left: 18),
            child: chip(),            
          ),
          fab(title: '',),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: bottom(),
          ),
        ],
      ),
    );
  }
}
