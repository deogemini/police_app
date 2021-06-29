import 'package:flutter/material.dart';
class ViewIR extends StatefulWidget {
  const ViewIR({ Key key }) : super(key: key);

  @override
  _ViewIRState createState() => _ViewIRState();
}

class _ViewIRState extends State<ViewIR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('View Investigation Report')
      )
      
    );
  }
}