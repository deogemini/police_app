import 'package:flutter/material.dart';
import 'package:police_app/app.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Police App',
      home: MyApp(),
    );
  }
}
