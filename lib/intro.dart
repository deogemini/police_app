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
        ],
      ),
    );
  }
}
