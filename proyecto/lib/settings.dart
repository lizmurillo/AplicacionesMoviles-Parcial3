import 'package:flutter/material.dart';
import 'package:proyecto/login.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff171717),
        appBar: AppBar(
          backgroundColor: Color(0xff171717),
          title: Text(
            "Settings",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'sulphur point',
            ),
          ),
        ),
        body: Stack(children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 700, left: 140),
                height: 15,
                width: 110,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 670, left: 130),
                height: 80,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/img/logo.png"))),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 34, left: 10),
            child: Text(
              "Log in",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 25, left: 335),
              child: Row(
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white),
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 73, left: 10),
            child: Text(
              "Help",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 65, left: 335),
              child: Row(
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white),
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      launch("https://help2.line.me/LINE_WEBTOON/pc?lang=es");
                    },
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 115, left: 10),
            child: Text(
              "About Us",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 100, left: 335),
              child: Row(
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white),
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      launch("https://www.webtoons.com/es/about");
                    },
                  ),
                ],
              )),
        ]));
  }
}
