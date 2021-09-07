import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


class Portadas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 235.0,
          width: double.infinity,
          child: Carousel(
            //Formato Puntos
            dotSize: 2.0,
            dotSpacing: 10.0,
            dotColor: Colors.transparent,
            //dotPosition: DotPosition.bottomRight,//por defecto estara en el centro, pero este ayuda a posicionar segun gustos
            //Fondo Pantalla de Puntos
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.transparent,
            //dotVerticalPadding: 5.0, //espacio Verticalmente
            images: [
              Image.asset('assets/img/1.JPG', fit: BoxFit.cover,),
              Image.asset('assets/img/2.JPG', fit: BoxFit.cover,),
              Image.asset('assets/img/3.JPG', fit: BoxFit.cover,),
              Image.asset('assets/img/4.jpg', fit: BoxFit.cover,),
              Image.asset('assets/img/5.jpg', fit: BoxFit.cover,),
              Image.asset('assets/img/6.jpg', fit: BoxFit.cover,),
            ],
          ),
        )
      ],
    );
  }
}
