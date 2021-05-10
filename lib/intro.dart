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
            child: Text(
                "A police investigator will use the application to review cases which have been registered in the police station for further police investigation process by using an android phone like taking picture  and  also recording sound and lastly to add content on the cases registered"),
          ),
        ],
      ),
    );
  }
}
