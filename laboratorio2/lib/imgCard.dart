import 'package:flutter/material.dart';

class ImgCard extends StatefulWidget {
  final VoidCallback onPressed;
  String rutaImg = "assets/img/";
  String ejercicio = "";
  String repeticion = "";
  String tiempo = "";
  ImgCard(
      Key key,
      @required this.rutaImg,
      @required this.ejercicio,
      @required this.repeticion,
      @required this.tiempo,
      @required this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _Card();
  }
}

class _Card extends State<ImgCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: widget.onPressed,
          child: Container(
            width: 150,
            height: 85,
            margin: EdgeInsets.only(top: 260),
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(widget.rutaImg),
            )),
          ),
        ),
        Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(top: 280),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black12)),
        Container(
            height: 50,
            width: 280,
            margin: EdgeInsets.only(top: 350, left: 20),
            child: Text(
              widget.ejercicio,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
        Container(
            height: 50,
            width: 280,
            margin: EdgeInsets.only(top: 365, left: 20),
            child: Text(
              widget.repeticion,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, color: Colors.black),
            )),
        Container(
            height: 50,
            width: 280,
            margin: EdgeInsets.only(top: 380, left: 20),
            child: Text(
              widget.tiempo,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
