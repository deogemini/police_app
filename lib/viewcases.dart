import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:police_app/app_state/caseState.dart';
import 'package:police_app/home.dart';
import 'package:police_app/investigationReport.dart';
import 'package:police_app/model/case.dart';
import 'package:provider/provider.dart';

class viewCase extends StatefulWidget {
  @override
  _viewCaseState createState() => _viewCaseState();
}

class _viewCaseState extends State<viewCase> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CaseState>(
        builder: (BuildContext context, caseState, child) {
      CaseDetails singleCase = caseState.caseDetails;
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
                        padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                        child: Text(
                          "Case Number: " + singleCase.casenumber,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                          child: Text(
                            "Name: " + singleCase.name,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                          child: Text(
                              'singleCase.age ',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              )))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                        child: Text(
                            singleCase.gender == null
                                ? 'Loading'
                                : singleCase.gender,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            )),
                      )
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                          child: Text(
                              singleCase.occupation == null
                                  ? 'Data Not Found'
                                  : singleCase.occupation,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                          child: Text(
                              singleCase.nationality == null
                                  ? 'Data Not Found'
                                  : singleCase.nationality,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                          width: 280,
                          child: Text(
                            singleCase.description == null
                                ? 'Data Not Found'
                                : singleCase.description,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                            maxLines: 20,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.33),
                          ),
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                          child: Text(
                              singleCase.address == null
                                  ? 'Data Not Found'
                                  : singleCase.address,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              )))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                        child: Text(
                            singleCase.immediateAction == null
                                ? 'Data Not Found'
                                : singleCase.immediateAction,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            )),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          InvestigationReport()),
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
                    ),
                  )
                ]))
          ])));
    });
  }
}
