import 'package:flutter/material.dart';
import 'package:police_app/app_state/caseState.dart';
import 'package:police_app/investigationReport.dart';
import 'package:police_app/model/case.dart';
import 'package:police_app/newInvestigationReport.dart';
import 'package:police_app/viewIR.dart';
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
      if (singleCase != null) {
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
                    Divider(
                      height: 50,
                      thickness: 10,
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
                    Divider(
                      height: 50,
                      thickness: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                            child: Text("Age: " + singleCase.age.toString(),
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                )))
                      ],
                    ),
                    Divider(
                      height: 50,
                      thickness: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                          child: singleCase.gender == null
                              ? Text("Gender: " + 'Loading',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ))
                              : Text("Gender: " + singleCase.gender,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  )),
                        )
                      ],
                    ),
                    Divider(
                      height: 50,
                      thickness: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                            child: singleCase.occupation == null
                                ? Text("Occupation: " + 'No Data Found',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ))
                                : Text("Occupation: " + singleCase.occupation,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400)),
                          ),
                        ]),
                    Divider(
                      height: 50,
                      thickness: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                            child: singleCase.nationality == null
                                ? Text("Nationality: " + 'No Data found',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ))
                                : Text("Nationality: " + singleCase.nationality,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    )),
                          ),
                        ]),
                    Divider(
                      height: 50,
                      thickness: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                            width: 280,
                            child: singleCase.description == null
                                ? Text(
                                    "Description: " + 'No Data Found',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.justify,
                                    maxLines: 20,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.33),
                                  )
                                : Text(
                                    "Description: " + singleCase.description,
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
                    Divider(
                      height: 50,
                      thickness: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                            child: singleCase.address == null
                                ? Text("Address: " + 'No Data Found',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ))
                                : Text("Address: " + singleCase.address))
                      ],
                    ),
                    Divider(
                      height: 50,
                      thickness: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(16, 20, 17, 0),
                          child: singleCase.immediateAction == null
                              ? Text("Immediate Action: " + 'No Data Found',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ))
                              : Text("Immediate Action: " +
                                  singleCase.immediateAction),
                        )
                      ],
                    ),
                    Divider(
                      height: 50,
                      thickness: 10,
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
                                            NewInvestigationReport( caseId: singleCase.id,)),
                                  );
                                },
                                child: Text('Add IR'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () async {
                                    await caseState.onGetCasesDetail();

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ViewIR()),
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
      } else {
        return Center(
            child: CircularProgressIndicator(
          color: Colors.amber,
        ));
      }
    });
  }
}
