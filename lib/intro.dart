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
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 7, 22, 0),
                    width: 330,
                    child: Text(
                      'The investigation officer uses the PCMS android application with functions as switch on different tabs of the pages of the android application, At the page of cases the investigator can view case details date, number and case description in short and to click the card case to add the investigation details using the button send available and last to see his or her profile.',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.justify,
                      maxLines: 10,
                      style: TextStyle(
                          height: 1.5,
                          wordSpacing: 3,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.3),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
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
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 7, 22, 0),
                    width: 330,
                    child: Text(
                      'This is police case android application is there to be used by the investion officer of the police station to add some contents for the cases assigned to him or to her, the app gives the ability to view case take pictures of the details and send the details to be viewed by other polices on the POLICE CASE MANAGEMENT SYSTEM.',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.justify,
                      maxLines: 10,
                      style: TextStyle(
                          height: 1.5,
                          wordSpacing: 3,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.3),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
