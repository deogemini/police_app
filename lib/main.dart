import 'dart:async';

import 'package:flutter/material.dart';
import 'package:police_app/app.dart';
import 'package:splashscreen/splashscreen.dart';

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
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new MyApp(),
      image: Image.asset('assets/policeIcon.png'),
      photoSize: 100.0,
      loaderColor: Colors.black,
    );
  }
}
