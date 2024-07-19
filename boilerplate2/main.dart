import 'package:flutter/material.dart';
import 'body.dart';
import 'bottom.dart';
import 'bottom2.dart';

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
      
      appBar: AppBar(
        backgroundColor: const Color(0XFF182949),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('SODA', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications), color: Colors.white),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share), color: Colors.white),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search), color: Colors.white)
        ],
      ),
      drawer: Drawer(
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
          Expanded(child: body(),),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          bottom(),
          bottom2(),
        ],
      ),
    );
  }
}
