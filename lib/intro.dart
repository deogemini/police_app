import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
          Column(
            children: <Widget>[
              Row(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                  child: Text(
                    "What Investigator has to do.",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 200,
              ),
              Row(children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                  child: Text(
                    "What is PCMS App.",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
