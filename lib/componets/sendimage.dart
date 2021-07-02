import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

class ImageSend extends StatefulWidget {
  const ImageSend({Key key}) : super(key: key);

  @override
  _ImageSendState createState() => _ImageSendState();
}

class _ImageSendState extends State<ImageSend> {
  //Active image file
  File _image;

  final picker = ImagePicker();

//user take images
  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  //cropper image
  Future<void> _cropImage() async {
    File cropped = await ImageCropper.cropImage(
      sourcePath: _image.path,
    );

    setState(() {
      _image = cropped ?? _image;
    });
  }

  //remove image
  void _clear() {
    setState(() {
      _image = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      if (_image != null) ...[
        Image.file(_image),
        Row(
          children: <Widget>[
            TextButton(
              child: Icon(Icons.crop),
              onPressed: _cropImage,
            ),
            TextButton(child: Icon(Icons.refresh), onPressed: _clear)
          ],
        ),
        // Uploader(file: _image)
      ],
      Card(
        child: Container(
          child: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.photo_camera),
                  onPressed: () => getImage(ImageSource.camera)),
              IconButton(
                  icon: Icon(Icons.photo_library),
                  onPressed: () => getImage(ImageSource.gallery)),
            ],
          ),
        ),
      ),
    ]));
  }
}
