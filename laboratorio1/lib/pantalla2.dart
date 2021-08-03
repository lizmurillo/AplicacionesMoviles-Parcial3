import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white24, 
    body: Stack(
      fit: StackFit.expand, children: [
        Container(
          width: 300,
          height: 375,
          margin: const EdgeInsets.only(top: 300),
          alignment: Alignment.topCenter,
          child: Image(
            fit: BoxFit.contain,
            image: AssetImage('assets/img/f2.jpg'),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 150, left: 10),
          child: Text(
            "¿Cómo llegar?",
            style: TextStyle(
              backgroundColor: Colors.white24,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 200),
          child: Text(
            "A Tokamachi se puede llegar fácilmente en tren y en coche.",
            style: TextStyle(
              backgroundColor: Colors.white24,
              fontSize: 20,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),
            textAlign: TextAlign.center
          ),
        ),
      ]
    )
    );
  }
}