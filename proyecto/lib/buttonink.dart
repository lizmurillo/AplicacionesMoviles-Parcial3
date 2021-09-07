import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonInk extends StatefulWidget {
  final VoidCallback onPressed;
  double heightB=0.0;
  double widthB=0.0;
  final String text;
  final Color color;


  ButtonInk({Key key, @required this.text, @required this.heightB, @required this.widthB,
  @required this.onPressed,  @required this.color});

  @override
  State<StatefulWidget> createState() {
    return _ButtonInk();
  }
}

class _ButtonInk extends State<ButtonInk>{
   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(bottom: 05, left:10, right:10),
        height: widget.heightB,
        width: widget.widthB,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.color,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 23,
              color: Colors.white)
          ),
        ),
      ),
    );
  }
}
