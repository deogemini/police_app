import 'package:flutter/material.dart';

class Cases extends StatefulWidget {
  @override
  _CasesState createState() => _CasesState();
}

class _CasesState extends State<Cases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
      Opacity(
        opacity: 0.3,
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage(
            "assets/policeIcon.png",
          ),
        ))),
      ),
      Container(
        child: Text("adcnkjsn"),
      )
    ]));
  }
}
