import 'package:flutter/material.dart';
import 'package:police_app/model/investigationReport.dart';
import 'package:police_app/service/InvestigationReport.dart';

class NewInvestigationReport extends StatefulWidget {
  final String caseId;
  NewInvestigationReport({@required this.caseId});
  @override
  _NewInvestigationReport createState() => _NewInvestigationReport();
}

class _NewInvestigationReport extends State<NewInvestigationReport> {
  InvestigationReport _investigationReport;
  TextEditingController propertystolen = TextEditingController();
  TextEditingController ifstolenproperty = TextEditingController();
  TextEditingController investigationofficer = TextEditingController();
  TextEditingController categoryofoffence = TextEditingController();
  TextEditingController offences = TextEditingController();
  TextEditingController section = TextEditingController();
  TextEditingController remark = TextEditingController();
  TextEditingController descriptions = TextEditingController();
  TextEditingController court = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildPropertyStolen() {
    return TextFormField(
      // initialValue: 'Hili ndio jibu',
      decoration: InputDecoration(labelText: 'PropertStolen'),
      controller: propertystolen,
    );
  }

  Widget _buildIfStolenPropert() {
    return TextFormField(
      // initialValue: 'Mambo ya moto',
      decoration: InputDecoration(labelText: 'Write Amount if Stolen'),
      controller: ifstolenproperty,
    );
  }

  Widget _buildInvestigationOfficer() {
    return TextFormField(
      // initialValue: 'haya',
      decoration: InputDecoration(labelText: 'investigation officer'),
      controller: investigationofficer,
    );
  }

  Widget _buildCategoryofOffence() {
    return TextFormField(
      // initialValue: 'DUH',
      decoration: InputDecoration(labelText: 'Category of Offence'),
      controller: categoryofoffence,
    );
  }

  Widget _buildOffences() {
    return TextFormField(
      // initialValue: 'haya',
      decoration: InputDecoration(labelText: 'Actual Offence'),
      controller: offences,
    );
  }

  Widget _buildRemarks() {
    return TextFormField(
      // initialValue: 'dah',
      decoration: InputDecoration(labelText: 'Remarks'),
      controller: remark,
    );
  }

  Widget _buildSection() {
    return TextFormField(
        // initialValue: 'dah',
        decoration: InputDecoration(labelText: 'Section'),
        controller: section);
  }

  Widget _buildDescriptions() {
    return TextFormField(
      // initialValue: 'duh',
      decoration: InputDecoration(labelText: 'Update Case Description'),
      controller: descriptions,
    );
  }

  Widget _buildCourts() {
    return TextFormField(
      // initialValue: 'mambo',
      decoration: InputDecoration(labelText: 'Status of Court'),
      controller: court,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add New Investigation Report'),
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // _buildPropertyStolen(),
                _buildInvestigationOfficer(),
                _buildCategoryofOffence(),
                // _buildCourts(),
                _buildDescriptions(),
                _buildSection(),
                _buildRemarks(),
                _buildOffences(),
                _buildIfStolenPropert(),
                SizedBox(
                  height: 60,
                ),
                // ElevatedButton(
                //   style: ButtonStyle(),
                //   child: Text(
                //     'Submit',
                //     style: TextStyle(color: Colors.black, fontSize: 16),
                //   ),
                //   onPressed: () {
                //     Map<String, dynamic> body = {
                //       "propertyStolen": propertystolen.text,
                //       "ifStolenproperty": ifstolenproperty.text,
                //       "investigationOfficer": investigationofficer.text,
                //       "categoryOfOffence": categoryofoffence.text,
                //       "offence": offences.text,
                //       "remarks": remark.text,
                //       "description": descriptions.text,
                //       "court": court.text
                //     };
                //     var saveCase = InvestigationReportService()
                //         .createIR(caseid: widget.caseId, bodyData: body);
                //     _formKey.currentContext;
                //   },
                // ),
                ElevatedButton(
                    onPressed: () async {
                      String caseid = widget.caseId;
                      // bool propertyStoleni = propertystolen.;
                      String investigationOfficer = investigationofficer.text;
                      String categoryOffence = categoryofoffence.text;
                      String courts = court.text;
                      String description = descriptions.text;
                      String remarks = remark.text;
                      String sections = section.text;
                      // String offence = offences.text;
                      String ifstolenpropert = ifstolenproperty.text;

                      InvestigationReport investigationReport =
                          await InvestigationReportService().submit(
                              caseid,
                              // propertyStoleni,
                              investigationOfficer,
                              categoryOffence,
                              courts,
                              sections,
                              description,
                              remarks,
                              // offence,
                              ifstolenpropert);
                      setState(() {
                        _investigationReport = investigationReport;
                      });
                    },
                    child: Text('submit'))
              ],
            ),
          ),
        ));
  }
}
