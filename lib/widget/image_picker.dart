import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageP extends StatefulWidget {
  const ImageP({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImagePState createState() => _ImagePState();
}

class _ImagePState extends State<ImageP> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile != null ? File(pickedFile.path) : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: getImage,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black26)),
          child: _image != null
              ? Image.file(_image!, fit: BoxFit.cover)
              : const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: Text('No image selected.')),
                ),
        ));
  }
}
