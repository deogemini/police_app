import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: <Widget>[
        SizedBox(height: 100),
        Container(
          height: 118,
          width: 90,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/policeIcon.png'),
                  fit: BoxFit.cover)),
        ),
      ])),
    );
  }
}
