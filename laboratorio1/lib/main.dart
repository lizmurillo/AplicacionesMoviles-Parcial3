import 'package:flutter/material.dart';
//import 'package:laboratorio1/home.dart';
import 'package:laboratorio1/navBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '十日町市',
      theme: ThemeData(
        fontFamily: 'sulphur point',
        primarySwatch: Colors.blue,
      ),
      home: NavBar(),
    );
  }
}
