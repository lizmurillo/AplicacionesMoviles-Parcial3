import 'package:flutter/material.dart';
import 'package:proyecto/carruseles/imgCard1.dart';
import 'package:url_launcher/url_launcher.dart';

class ListGaleria1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImgCard1(key, "assets/img/ms1.jpg", "True Beauty", "Romance", (){launch("https://youtu.be/4ith-yFEcEk");}),
          ImgCard1(key, "assets/img/ms2.jpg", "Catharsis", "Fantasy", (){launch("https://www.deviantart.com/ahniki");}),
          ImgCard1(key, "assets/img/ms3.jpg", "Sweet Home", "Thriller", (){launch("https://www.webtoons.com/en/thriller/sweethome/list?title_no=1285");}),
          ImgCard1(key, "assets/img/ms4.jpg", "Let's Play", "Comedy", (){launch("https://www.webtoons.com/en/romance/letsplay/list?title_no=1218");})
        ],
      ),
    );
  }
}
