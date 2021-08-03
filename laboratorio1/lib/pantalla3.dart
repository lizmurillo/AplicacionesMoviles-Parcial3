import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
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
            image: AssetImage('assets/img/f3.jpg'),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 150, left: 10),
          child: Text(
            "Datos breves",
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
            "Cada año, hasta cinco metros de nieve cubren la ciudad de Tokamachi",
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