import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white24, 
    body: Stack(
      fit: StackFit.expand, children: [
        Container(
          width: 300,
          height: 375,
          margin: const EdgeInsets.only(top: 340),
          alignment: Alignment.topCenter,
          child: Image(
            fit: BoxFit.contain,
            image: AssetImage('assets/img/f1.jpg'),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 70, left: 10),
          child: Text(
            "Tokamachi",
            style: TextStyle(
              backgroundColor: Colors.white24,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade800,
            ),
            textAlign: TextAlign.center
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 120, left: 10),
          child: Text(
            "十日町市 - Niigata-ken",
            style: TextStyle(
              backgroundColor: Colors.white24,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent.shade100,
            ),
            textAlign: TextAlign.center
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 200, left: 10),
          child: Text(
            "Una de las gargantas más hermosas de Japón, un emocionante festival de nieve y onsen de montaña",
            style: TextStyle(
              backgroundColor: Colors.white24,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 295),
          child: Text(
            "Niigata es la capital del arroz",
            style: TextStyle(
              backgroundColor: Colors.white24,
              fontSize: 18,
              color: Colors.black38,
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
