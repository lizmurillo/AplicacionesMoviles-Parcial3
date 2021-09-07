import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/buttonink.dart';
import 'package:proyecto/settings.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff171717),
        appBar: AppBar(
          backgroundColor: Color(0xff171717),
          title: Text(
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
        body: Stack(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100, left: 40.0),
                  child: Text(
                    "Sign up or log in\nto enjoy free comics",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'sulphur point',
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 130,
              width: 130,
              margin: EdgeInsets.only(top: 65, left: 240),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/img/bear.gif"))),
            ),
            Container(
              margin: EdgeInsets.only(top: 210, left: 10),
              child: _textFieldEmail(),
            ),
            Container(
              margin: EdgeInsets.only(top: 285, left: 10),
              child: _textFieldPassword(),
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 380, left: 90),
                    child: ButtonInk(
                      text: "Sign up",
                      heightB: 60,
                      widthB: 85,
                      onPressed: () {},
                      color: Color(0xff8c8c8c),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 380),
                    child: ButtonInk(
                      text: "Log in",
                      heightB: 60,
                      widthB: 85,
                      onPressed: () {},
                      color: Color(0xff01dc66),
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 460, left: 130),
              child: Text(
                "Forgot Password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontFamily: 'sulphur point',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 500, left: 75),
              child: Text(
                "---------- OR Log in with ----------",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 560, left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FacebookAuthButton(
                    onPressed: () {},
                    style: AuthButtonStyle(
                        buttonType: AuthButtonType.icon,
                        height: 40.0,
                        width: 70.0,
                        separator: 10.0),
                  ),
                  TwitterAuthButton(
                    onPressed: () {},
                    style: AuthButtonStyle(
                        buttonType: AuthButtonType.icon,
                        height: 40.0,
                        width: 70.0,
                        separator: 10.0),
                  ),
                  GoogleAuthButton(
                    onPressed: () {},
                    style: AuthButtonStyle(
                        buttonType: AuthButtonType.icon,
                        height: 40.0,
                        width: 70.0,
                        separator: 10.0),
                  ),
                  AppleAuthButton(
                    onPressed: () {},
                    style: AuthButtonStyle(
                        buttonType: AuthButtonType.icon,
                        height: 40.0,
                        width: 70.0,
                        separator: 10.0),
                  ),
                ],
              ),
            )
          ],
        ));
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

// ignore: camel_case_types
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
