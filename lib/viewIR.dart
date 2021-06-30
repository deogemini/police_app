import 'package:flutter/material.dart';

class ViewIR extends StatefulWidget {
  const ViewIR({Key key}) : super(key: key);

  @override
  _ViewIRState createState() => _ViewIRState();
}

class _ViewIRState extends State<ViewIR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('View Investigation Report')),
      body: Container(
        alignment: Alignment.center,
        width: 300,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.lightBlueAccent,
              borderOnForeground: true,
              shadowColor: Colors.blueGrey,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Investigation Report Number',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black38,
                    endIndent: 0.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Put here number',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
             SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.lightBlueAccent,
              borderOnForeground: true,
              shadowColor: Colors.blueGrey,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Category of offence',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black38,
                    endIndent: 0.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Put here number',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
            
              SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.lightBlueAccent,
              borderOnForeground: true,
              shadowColor: Colors.blueGrey,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Law Section',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black38,
                    endIndent: 0.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Put here number',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
            
              SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.lightBlueAccent,
              borderOnForeground: true,
              shadowColor: Colors.blueGrey,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Remarks',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black38,
                    endIndent: 0.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Put here number',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
            
              SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.lightBlueAccent,
              borderOnForeground: true,
              shadowColor: Colors.blueGrey,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Case Description',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black38,
                    endIndent: 0.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Put here number',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
