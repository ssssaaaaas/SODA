import 'package:flutter/material.dart';
import 'textfield.dart';
import 'radio.dart';
import 'checkbox.dart';
import 'datepicker.dart';
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switchValue = false;

  void _showSnackBar() {
    final snackBar = SnackBar(
      content: const Text('Switch를 ON 하였습니다.'),
      duration: const Duration(seconds: 3),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF182949),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'SODA',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Switch(
              value: _switchValue,
              activeColor: const Color(0XFF4B6EB1),
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                  if(value) {_showSnackBar();}
                });
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0XFF182949)),
              child: Text(
                'SODA',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Color(0XFF7B7A7A),
              ),
              title: Text(
                'Icon : favorite',
                style: TextStyle(color: Color(0XFF7B7A7A)),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16, 23, 24, 0),
                child: textfield(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 19),
                child: radio(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 19),
                child: checkbox(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(19, 50, 0, 0),
                child: datepicker(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 265),
                child: bottom(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const fab(),
    );
  }
}
