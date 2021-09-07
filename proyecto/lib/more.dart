import 'package:flutter/material.dart';
import 'package:proyecto/settings.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff171717),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, left: 10),
              child: Text(
                "MORE",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 80, left: 30),
                  child: Icon(
                    Icons.circle,
                    color: Colors.yellow,
                    size: 30.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80, left: 10),
                  child: Text(
                    "0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'sulphur point',
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 93, left: 30),
              child: Icon(
                Icons.copyright,
                color: Colors.amber.shade800,
                size: 30.0,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 135, left: 33),
                  child: Text(
                    "Purchased ",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20,
                      fontFamily: 'sulphur point',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 135),
                  child: Text(
                    "0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'sulphur point',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 135, left: 33),
                  child: Text(
                    "Free ",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20,
                      fontFamily: 'sulphur point',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 135),
                  child: Text(
                    "0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'sulphur point',
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 200),
                    child: Row(
                      children: [
                        FloatingActionButton(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          elevation: 0.0,
                          backgroundColor: Colors.transparent,
                          onPressed: () {},
                        ),
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 200),
                    child: Row(
                      children: [
                        FloatingActionButton(
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          elevation: 0.0,
                          backgroundColor: Colors.transparent,
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Settings()));
                          },
                        ),
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 200),
                    child: Row(
                      children: [
                        FloatingActionButton(
                          child: Icon(
                            Icons.translate,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          elevation: 0.0,
                          backgroundColor: Colors.transparent,
                          onPressed: () {},
                        ),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 250, left: 25),
                    child: Text("Search",
                        style: TextStyle(color: Colors.white, fontSize: 15))),
                Container(
                    margin: const EdgeInsets.only(top: 250, left: 30),
                    child: Text("Settings",
                        style: TextStyle(color: Colors.white, fontSize: 15))),
                Container(
                    margin: const EdgeInsets.only(top: 250),
                    child: Text("Fan Translation",
                        style: TextStyle(color: Colors.white, fontSize: 15))),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 325, left: 33),
                  child: Text(
                    "Notice",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'sulphur point',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 325, left: 05),
                  child: Text(
                    "> ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'sulphur point',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 325, left: 05),
                  child: Text(
                    "September WEBTOON Spotlight (Week 1)",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 13,
                      fontFamily: 'sulphur point',
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
