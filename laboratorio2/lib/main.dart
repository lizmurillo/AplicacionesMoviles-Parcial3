import 'package:flutter/material.dart';
import 'package:laboratorio2/navBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        fontFamily: 'sulphur point',
        primarySwatch: Colors.blue,
      ),
      home: NavBar(),
    );
  }
}
