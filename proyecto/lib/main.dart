import 'package:flutter/material.dart';
import 'package:proyecto/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C-Toon',
      theme: ThemeData(
        fontFamily: 'sulphur point',
        primarySwatch: Colors.blue,
      ),
      home: NavBar(),
    );
  }
}
