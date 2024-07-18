import 'package:flutter/material.dart';
import 'navigationBar.dart';

void main() => runApp(MyApp());

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
      appBar: AppBar(
        backgroundColor: Color(0XFF4B6EB1),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('SODA', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
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
      body: navigationBar(),
    );
  }
}
