import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:police_app/home.dart';
import 'package:police_app/investigationReport.dart';

class viewCase extends StatefulWidget {
  @override
  _viewCaseState createState() => _viewCaseState();
}

class _viewCaseState extends State<viewCase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Case in detailed'),
          backgroundColor: Color(
            0xff1EA5FC,
          ),
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
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
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 315,
                        child: Text(
                          'Mama anamshutumu Mussa kuuza kuku  bila ridhaa yake kwenye duka la nyumbani , inahitajika uchunguzi zaidi kuhusu ukweli wa taarifa hizi kuhusu ushahidi',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          maxLines: 6,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              letterSpacing: -0.33),
                        ),
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InvestigationReport()),
                            );
                          },
                          child: Text('Add IR'),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        InvestigationReport()),
                              );
                            },
                            child: Text('View IR'))
                      ],
                    )
                  ],
                )
              ]))
        ])));
  }
}
