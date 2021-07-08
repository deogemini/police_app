import 'package:flutter/material.dart';
import 'package:police_app/app_state/caseState.dart';
import 'package:police_app/investigationForm.dart';
import 'package:police_app/model/investigationReport.dart';
import 'package:police_app/viewcases.dart';
import 'package:provider/provider.dart';

class ViewIR extends StatefulWidget {
  const ViewIR({Key key}) : super(key: key);

  @override
  _ViewIRState createState() => _ViewIRState();
}

class _ViewIRState extends State<ViewIR> {
  @override
  void initState() {
    super.initState();
  }

  void onInit() async {
    await Provider.of<CaseState>(context, listen: false).onGetCasesDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CaseState>(
        builder: (BuildContext context, caseState, child) {
      List<InvestigationReport> IRs = caseState.investigationsReports;
      if (IRs.isEmpty) {
        return Scaffold(
          backgroundColor: Colors.grey[350],
            appBar: AppBar(
              title: Text('View Investigation Report'),
            ),
            body: Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Card(
                        color: Colors.red,
                        child: Column(children: <Widget>[
                          Text(
                            'the case has no Investigation Report',
                            style: TextStyle(
                                height: 3,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          )
                        ])),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          alignment: Alignment.center,
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => viewCase()),
                          );
                        },
                        child: Text(
                          'Go back To add new IR',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ))
                  ],
                )));
      } else {
        InvestigationReport singleIR = IRs[0];

        return Scaffold(
          appBar: AppBar(title: Text('View Investigation Report')),
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              alignment: Alignment.center,
              width: 350,
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    borderOnForeground: true,
                    shadowColor: Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Investigation Report Number',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  
                                    fontSize: 18, fontWeight: FontWeight.w500),
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
                                singleIR.irNumber.toString(),
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w300),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
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
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                              singleIR.categoryOfOffence,
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
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                              singleIR.section,
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
                    borderOnForeground: true,
                    shadowColor: Colors.blueGrey,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Amount if Stolen Propert',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                              singleIR.ifStolenproperty,
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
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                              singleIR.remarks,
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.ltr,
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
                      borderOnForeground: true,
                      shadowColor: Colors.blueGrey,
                      child: Column(children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Case Description',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
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
                            Expanded(
                              child: Text(
                                singleIR.description,
                                textAlign: TextAlign.justify,
                                maxLines: 7,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ])),
                  TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.lime),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InvestigationForm()),
                        );
                      },
                      child:
                          Text('Press here to update the investigation Report'))
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
