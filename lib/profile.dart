import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Opacity(
          opacity: 0.3,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/policeIcon.png",
              ),
            )),
          )),
      Container(
        child: Text(
          'Profile Details Coming Soon',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ]));
  }
}
