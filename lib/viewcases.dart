import 'package:flutter/material.dart';

class viewCase extends StatefulWidget {
  @override
  _viewCaseState createState() => _viewCaseState();
}

class _viewCaseState extends State<viewCase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title: Text('Case in detailed'),
          backgroundColor: Color(0xff1EA5FC,
        ),
      ),
     body: Stack(children: <Widget>[
      Opacity(
        opacity: 0.3,
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage(
            "assets/policeIcon.png",
          ),
        ))))])
    );
  }
}