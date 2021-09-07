import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImgCard extends StatefulWidget {
  String rutaImg = "";
  ImgCard(Key key, this.rutaImg);

  @override
  State<StatefulWidget> createState() {
    return _Card();
  }
}

//Clase anidada
class _Card extends State<ImgCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          child: Container(
            height: 190,
            width: 150,
            decoration: BoxDecoration(
              //color: Colors.orange,
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(widget.rutaImg))),
          ),
        )
      ],
    );
  }
}
