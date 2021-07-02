import 'package:flutter/material.dart';
import 'package:police_app/app_state/caseState.dart';
import 'package:police_app/model/investigationReport.dart';
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
    // onInit();
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
          backgroundColor: Colors.blueAccent.shade50,
          appBar: AppBar(title: Text('View Investigatino Report'),),
          body: Container(alignment: Alignment.center,
          child: Column(children: <Widget>[
            Card(
              color: Colors.red,
              child: Column(children: [
                Center(
                  child: Text(
            'the case has no Investigation Report',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
                ),

              ],),

            )

          ],),
          ),
        );
      } else {
        InvestigationReport singleIR = IRs[0];

        return Scaffold(
          appBar: AppBar(title: Text('View Investigation Report')),
          body: Container(
            alignment: Alignment.center,
            width: 350,
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
                            singleIR.remarks,
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}
