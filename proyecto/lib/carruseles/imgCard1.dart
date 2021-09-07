import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImgCard1 extends StatefulWidget {
  final VoidCallback onPressed;
  String rutaImg = "";
  String titulo = "";
  String genero = "";
  ImgCard1(Key key, this.rutaImg, this.titulo, this.genero,
      this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _Card1();
  }
}

//Clase anidada
class _Card1 extends State<ImgCard1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: widget.onPressed,
          child: Container(
            height: 90,
            width: 90,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(05),
              //color: Colors.yellow,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(widget.rutaImg),
                )),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 100, left: 12),
            child: Text(
              widget.titulo,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        Container(
            margin: EdgeInsets.only(top: 120, left: 12),
            child: Text(
              widget.genero,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 17, color: Colors.grey.shade300),
            )),
        Container(
            margin: EdgeInsets.only(top: 145, left: 12),
            child: Text(
              "✓ Susbribed",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade300),
            ))
      ],
    );
  }
}
