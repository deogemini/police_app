import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class InvestigationForm extends StatefulWidget {
  const InvestigationForm({Key key}) : super(key: key);

  @override
  _InvestigationFormState createState() => _InvestigationFormState();
}

class _InvestigationFormState extends State<InvestigationForm> {
  File _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

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
    return TextField(
      decoration: InputDecoration(labelText: 'PropertStolen'),
      onChanged: (String value) {
        _propertystolen = value;
      },
    );
  }

  Widget _buildIfStolenPropert() {
    return TextField(
      decoration: InputDecoration(labelText: 'Write Amount if Stolen'),
      onChanged: (String value) {
        _ifstolenproperty = value;
      },
    );
  }

  Widget _buildInvestigationOfficer() {
    return TextField(
      decoration: InputDecoration(labelText: 'investigation officer'),
      onChanged: (String value) {
        _investigationofficer = value;
      },
    );
  }

  Widget _buildCategoryofOffence() {
    return TextField(
      decoration: InputDecoration(labelText: 'Category of Offence'),
      onChanged: (String value) {
        _categoryofoffence = value;
      },
    );
  }

  Widget _buildOffences() {
    return TextField(
        decoration: InputDecoration(labelText: 'Actual Offence'),
        onChanged: (String value) {
          _offences = value;
        });
  }

  Widget _buildSections() {
    return TextField(
      decoration: InputDecoration(labelText: 'Constituion Section'),
      onChanged: (String value) {
        _sections = value;
      },
    );
  }

  Widget _buildRemarks() {
    return TextField(
      decoration: InputDecoration(labelText: 'Remarks'),
      onChanged: (String value) {
        _remark = value;
      },
    );
  }

  Widget _buildDescriptions() {
    return TextField(
      decoration: InputDecoration(labelText: 'Update Case Description'),
      onChanged: (String value) {
        _descriptions = value;
      },
    );
  }

  Widget _buildCourts() {
    return TextField(
      decoration: InputDecoration(labelText: 'Status of Court'),
      onChanged: (String value) {
        _court = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                TextButton(
                  style: ButtonStyle(),
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    _formKey.currentState.save();
                    print(_propertystolen);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
