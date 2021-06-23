import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
class InvestigationReport  extends StatefulWidget {
  const InvestigationReport ({ Key key }) : super(key: key);

  @override
  _InvestigationReport  createState() => _InvestigationReport();
}

class _InvestigationReport extends State<InvestigationReport > {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investigation Report'),
      ),

      body: Center(child: Text('Coming Soon Boss'),),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo_rounded),
      ),
      
    );
  }
}