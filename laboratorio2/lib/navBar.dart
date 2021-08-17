import 'package:flutter/material.dart';
import 'package:laboratorio2/home.dart';
import 'package:laboratorio2/pantalla5.dart';
import 'pantalla2.dart';
import 'pantalla3.dart';
import 'pantalla4.dart';

class NavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavBar();
  }
}

class _NavBar extends State {
  int indexP = 0;
  final List<Widget> pantallas = [Home(), Pantalla2(), Pantalla3(), Pantalla4(), Pantalla5()];

  void onTapped(int index) {
    setState(() {indexP = index;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[indexP],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.orangeAccent,
              primaryColor: Colors.blueAccent),
          child: BottomNavigationBar(
            onTap: onTapped,
            currentIndex: indexP,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.notes_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined), label: ""),
            ],
          )),
    );
  }
}
