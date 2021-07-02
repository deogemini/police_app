import 'package:flutter/material.dart';
import 'package:police_app/investigationForm.dart';

class IR extends StatefulWidget {
  const IR({Key key}) : super(key: key);

  @override
  _IR createState() => _IR();
}

class _IR extends State<IR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Investigation Report'),
        ),
        body: InvestigationForm());
  }
}
