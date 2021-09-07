import 'package:flutter/material.dart';
import 'package:proyecto/foryou.dart';
import 'package:proyecto/more.dart';
import 'package:proyecto/perfil.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexP = 0;
  final List<Widget> pantallas = [ForYou(), Perfil(), More()];

  void onTapped(int index) {
    setState(() {
      indexP = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[indexP],
      bottomNavigationBar:
          Theme(data: Theme.of(context).copyWith(canvasColor: Colors.black, primaryColor: Colors.greenAccent.shade400), 
          child: BottomNavigationBar(onTap: onTapped, currentIndex: indexP, items: [
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.white30), label: "For You"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined, color: Colors.white30), label: "My"),
            BottomNavigationBarItem(icon: Icon(Icons.keyboard_control, color: Colors.white30), label: "More"),
          ],)
          ),
    );
  }
}