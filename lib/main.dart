import 'dart:async';

import 'package:flutter/material.dart';
import 'package:police_app/app.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Police App',
      home: firstPage(),
    );
  }
}

class firstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<firstPage> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1EA5FC),
      child: Image.asset('assets/policeIcon.png'),
    );
  }
}
