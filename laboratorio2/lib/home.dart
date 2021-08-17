import 'package:flutter/material.dart';
import 'package:laboratorio2/listgaleria.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black12,
      body: Stack(fit: StackFit.expand, children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            height: 380,
            margin: EdgeInsets.only(top: 190, left: 45),
            child: ListGaleria()),
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/img/perfil1.jpg"),
                  ),
                  shape: BoxShape.circle),
            )
          ],
        ),
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 45),
            constraints: BoxConstraints.expand(),
            child: Text("Home",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
        ),
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 115, left: 30),
            constraints: BoxConstraints.expand(),
            child: Text(
              "Hi Lili♥ ,",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 145, left: 30),
            constraints: BoxConstraints.expand(),
            child: Text(
              "Get In Shape",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/img/naranja.jpg"))),
              width: 330,
              height: 85,
              margin: EdgeInsets.only(top: 145, left: 35),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: 10, left: 35),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/silueta.png"))),
            )
          ],
        ),
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 400, left: 30),
            constraints: BoxConstraints.expand(),
            child: Text("Popular Excersice",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ]),
    );
  }
}
