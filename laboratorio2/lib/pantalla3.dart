import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 550,
        width: 475,
        margin: EdgeInsets.only(top: 100),
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.scaleDown,
          image: AssetImage("assets/img/foto2.jpg"),
        )),
      ),
    );
  }
}