import 'package:flutter/material.dart';
import 'package:proyecto/carruseles/imgCard.dart';

class ListGaleria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImgCard(key, "assets/img/nw1.JPG"),
          ImgCard(key, "assets/img/nw2.JPG"),
          ImgCard(key, "assets/img/nw3.JPG"),
          ImgCard(key, "assets/img/nw4.jpg"),
          ImgCard(key, "assets/img/nw5.jpg"),
          ImgCard(key, "assets/img/nw6.jpg"),
          ImgCard(key, "assets/img/nw7.jpg"),
          ImgCard(key, "assets/img/nw8.jpg"),
          ImgCard(key, "assets/img/nw9.jpg")
        ],
      ),
    );
  }
}