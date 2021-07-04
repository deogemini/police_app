import 'package:flutter/material.dart';

import 'package:police_app/componets/sendimage.dart';

class InvestigationForm extends StatefulWidget {
  const InvestigationForm({Key key}) : super(key: key);

  @override
  _InvestigationFormState createState() => _InvestigationFormState();
}

class _InvestigationFormState extends State<InvestigationForm> {
  TextEditingController _propertystolen = TextEditingController();
  TextEditingController _ifstolenproperty = TextEditingController();
  TextEditingController _investigationofficer = TextEditingController();
  TextEditingController _categoryoffences = TextEditingController();
  TextEditingController _offences = TextEditingController();
  TextEditingController _sections = TextEditingController();
  TextEditingController _remark = TextEditingController();
  TextEditingController _descriptions = TextEditingController();
  TextEditingController _court = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildPropertyStolen() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(labelText: 'PropertStolen'),
        controller: _propertystolen,
      ),
    );
  }

  Widget _buildIfStolenPropert() {
    return Container(
      child: TextFormField(
          decoration: InputDecoration(labelText: 'Write Amount if Stolen'),
          controller: _ifstolenproperty),
    );
  }

  Widget _buildInvestigationOfficer() {
    return Container(
      child: TextFormField(
          // initialValue: 'haya',
          decoration: InputDecoration(labelText: 'investigation officer'),
          controller: _investigationofficer),
    );
  }

  Widget _buildCategoryofOffence() {
    return Container(
      child: TextFormField(
          decoration: InputDecoration(labelText: 'Category of Offence'),
          controller: _categoryoffences),
    );
  }

  Widget _buildOffences() {
    return Container(
        child: TextFormField(
      decoration: InputDecoration(labelText: 'Actual Offence'),
      controller: _offences,
    ));
  }

  Widget _buildSections() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Constituion Section'),
        controller: _sections,
      ),
    );
  }

  Widget _buildRemarks() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Remarks'),
        controller: _remark,
      ),
    );
  }

  Widget _buildDescriptions() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Update Case Description'),
        controller: _descriptions,
      ),
    );
  }

  Widget _buildCourts() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Status of Court'),
        controller: _court,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Edit Investigation Report'),
        ),
        body: Container(
            margin: EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildPropertyStolen(),
                    _buildInvestigationOfficer(),
                    _buildCategoryofOffence(),
                    _buildCourts(),
                    _buildDescriptions(),
                    _buildRemarks(),
                    _buildSections(),
                    _buildOffences(),
                    _buildIfStolenPropert(),
                    SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(),
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      onPressed: () {
                        _formKey.currentState.save();
                        print(_propertystolen);
                      },
                    ),
                    ImageSend()
                  ],
                ),
              ),
            )));
  }
}
