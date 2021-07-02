import 'package:flutter/material.dart';
import 'dart:io';

import 'package:police_app/componets/sendimage.dart';

class InvestigationForm extends StatefulWidget {
  const InvestigationForm({Key key}) : super(key: key);

  @override
  _InvestigationFormState createState() => _InvestigationFormState();
}

class _InvestigationFormState extends State<InvestigationForm> {

  String _propertystolen;
  String _ifstolenproperty;
  String _investigationofficer;
  String _categoryofoffence;
  String _offences;
  String _sections;
  String _remark;
  String _descriptions;
  String _court;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  Widget _buildPropertyStolen() {
    return Container(
      child: TextFormField(
        initialValue: 'Hili ndio jibu',
        decoration: InputDecoration(labelText: 'PropertStolen'),
        
        onChanged: (String value) {
          _propertystolen = value;
        },
      ),
    );
  }

  Widget _buildIfStolenPropert() {
    return Container(
      child: TextFormField(
        initialValue: 'Mambo ya moto',
        decoration: InputDecoration(labelText: 'Write Amount if Stolen'),
        onChanged: (String value) {
          _ifstolenproperty = value;
        },
      ),
    );
  }

  Widget _buildInvestigationOfficer() {
    return Container(
      child: TextFormField(
        initialValue: 'haya',
        decoration: InputDecoration(labelText: 'investigation officer'),
        onChanged: (String value) {
          _investigationofficer = value;
        },
      ),
    );
  }

  Widget _buildCategoryofOffence() {
    return Container(
      child: TextFormField(
        initialValue: 'DUH',
        decoration: InputDecoration(labelText: 'Category of Offence'),
        onChanged: (String value) {
          _categoryofoffence = value;
        },
      ),
    );
  }

  Widget _buildOffences() {
    return Container(
      child: TextFormField(
        initialValue: 'haya',
          decoration: InputDecoration(labelText: 'Actual Offence'),
          onChanged: (String value) {
            _offences = value;
          }),
    );
  }

  Widget _buildSections() {
    return Container(
      child: TextFormField(
        initialValue: 'duh',
        decoration: InputDecoration(labelText: 'Constituion Section'),
        onChanged: (String value) {
          _sections = value;
        },
      ),
    );
  }

  Widget _buildRemarks() {
    return Container(
      child: TextFormField(
        initialValue: 'dah',
        decoration: InputDecoration(labelText: 'Remarks'),
        onChanged: (String value) {
          _remark = value;
        },
      ),
    );
  }

  Widget _buildDescriptions() {
    return Container(
      child: TextFormField(
        initialValue: 'duh',
        decoration: InputDecoration(labelText: 'Update Case Description'),
        onChanged: (String value) {
          _descriptions = value;
        },
      ),
    );
  }

  Widget _buildCourts() {
    return Container(
      child: TextFormField(
        initialValue: 'mambo',
        decoration: InputDecoration(labelText: 'Status of Court'),
        onChanged: (String value) {
          _court = value;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Investigation Report'),),
      body:
    Container(
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
      )  ));
  }
}
