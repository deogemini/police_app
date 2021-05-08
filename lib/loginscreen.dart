import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 75,
            left: 135,
            height: 118,
            width: 90,
            child: Image.asset(
              'assets/policeIcon.png',
              width: size.width * 0.4,
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: Color(0xffcff7fa),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_box),
                      hintText: "User Id",
                      border: InputBorder.none))),
          SizedBox(
            height: 70,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.8,
            decoration: BoxDecoration(
                color: Color(0xffcff7fa),
                borderRadius: BorderRadius.circular(20)),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.visibility),
                    border: InputBorder.none)),
          ),
        ],
      ),
    ));
  }
}
