import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class viewCase extends StatefulWidget {
  @override
  _viewCaseState createState() => _viewCaseState();
}

class _viewCaseState extends State<viewCase> {
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
        title: Text('Case in detailed'),
        backgroundColor: Color(
          0xff1EA5FC,
        ),
      ),
      body: Stack(children: <Widget>[
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
        Column(
          children: <Widget>[
            const ListTile(
                title: Text(
                    '82189291                                            09/12/2020',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(14, 7, 14, 0),
                    child: Container(
                      width: 315,
                      child: Text(
                        'Mama anamshutumu Mussa kuuza kuku  bila ridhaa jkbjbjb jbjjb jbbjb hvvh mjjbjbjhb hjjhvj jhv hjvjv gcgcggb',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        maxLines: 6,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -0.33),
                      ),
                    ),
                  ),
                ]),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Add Content in this case',
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: _image == null
                    ? Text('Image not uploaded')
                    : Image.file(
                        _image,
                        height: 300,
                        width: 300,
                      ),
              ),
            )
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
