import 'package:flutter/material.dart';
import 'package:proyecto/carruseles/listgaleria.dart';
import 'package:proyecto/carruseles/listgaleria1.dart';
import 'package:proyecto/carruseles/portadas.dart';
import 'package:proyecto/perfil.dart';
import 'package:url_launcher/url_launcher.dart';

class ForYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff171717),
        body: Stack(
          children: [
            Container(child: Portadas()),
            Container(
                margin: const EdgeInsets.only(top: 25, left: 350),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30.0,
                )),
            Container(
                margin: const EdgeInsets.only(top: 300, left: 10),
                child: ListGaleria1()),
            Container(
              margin: const EdgeInsets.only(top: 250, left: 10),
              child: Text(
                "My Series",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 250, left: 335),
                child: Row(
                  children: [
                    FloatingActionButton(
                      child: Icon(Icons.arrow_forward_ios_rounded,
                          color: Colors.white),
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Perfil()));
                      },
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 550, left: 25),
              child: ListGaleria()),
            Container(
              margin: const EdgeInsets.only(top: 510, left: 10),
              child: Text(
                "New WEBTOON ORIGINALS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 498, left: 335),
                child: Row(
                  children: [
                    FloatingActionButton(
                      child: Icon(Icons.arrow_forward_ios_rounded,
                          color: Colors.white),
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      onPressed: () {
                        launch("https://www.webtoons.com/es/dailySchedule");
                      },
                    ),
                  ],
                ))
          ],
        ));
  }
}
