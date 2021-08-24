import 'package:flutter/material.dart';
import 'package:proyecto/buttonink.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff171717),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            child: Text(
              "Log in",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'sulphur point',
              ),
            ),
          ),
           SizedBox(
            height: 200.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
            child: Text(
              "Sign up or log in\nto enjoy free comics",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'sulphur point',
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    scale: 10,
                    image: AssetImage("assets/img/bear.gif"))),
          )
          ],),
          SizedBox(
            height: 40.0,
          ),
          _textFieldEmail(),
          SizedBox(
            height: 10.0,
          ),
          _textFieldPassword(),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonInk(
                text: "Sign up",
                heightB: 60,
                widthB: 85,
                onPressed: () {},
                color: Color(0xff8c8c8c),
              ),
              ButtonInk(
                text: "Log in",
                heightB: 60,
                widthB: 85,
                onPressed: () {},
                color: Color(0xff01dc66),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: Text(
              "Forgot Password?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'sulphur point',
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Text(
              "---------- OR Log in with ----------",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'sulphur point',
              ),
            ),
          ),
        ])));
  }

  Widget _textFieldEmail() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return _textFieldGeneral(
          labelText: 'Enter Email Address',
          icon: Icons.email_outlined,
        );
      },
    );
  }

  Widget _textFieldPassword() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return _textFieldGeneral(
          labelText: 'Enter Password',
          icon: Icons.lock_outline_rounded,
          errorText: snapshot.error,
        );
      },
    );
  }
}

class _textFieldGeneral extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final IconData icon;
  final String errorText;
  const _textFieldGeneral({
    @required this.labelText,
    this.keyboardType,
    this.icon,
    this.errorText,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          errorText: errorText,
          prefixIcon: Icon(icon),
          labelText: labelText,
        ),
      ),
    );
  }
}
