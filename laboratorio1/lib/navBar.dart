import 'package:flutter/material.dart';
import 'pantalla1.dart';
import 'pantalla2.dart';
import 'pantalla3.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexP = 0;
  final List<Widget> pantallas = [Pantalla1(), Pantalla2(), Pantalla3()];

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
          Theme(data: Theme.of(context).copyWith(canvasColor: Colors.blueAccent.shade200, primaryColor: Colors.yellow), 
          child: BottomNavigationBar(onTap: onTapped, currentIndex: indexP, items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.navigation_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.device_unknown_outlined), label: ""),
          ],)
          ),
    );
  }
}