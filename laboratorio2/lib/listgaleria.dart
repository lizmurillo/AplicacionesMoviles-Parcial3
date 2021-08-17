import 'package:flutter/material.dart';
import 'package:laboratorio2/imgCard.dart';
import 'package:laboratorio2/mancuerda.dart';
import 'package:laboratorio2/pesomuerto.dart';
import 'package:laboratorio2/pushup.dart';

class ListGaleria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImgCard(key, "assets/img/mancuerda.png", "Dumbbell Rows","16 workouts","1Hr 20 min", () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Mancuerda()));
          }),
          ImgCard(key, "assets/img/pushup.png", "Push Ups", "12 workouts","0Hr 50 min", () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PushUp()));
          }),
          ImgCard(key, "assets/img/pesomuerto.png", "Sqautes","8 workouts","1Hr 30 min", () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PesoMuerto()));
          }),
        ],
      ),
    );
  }
}