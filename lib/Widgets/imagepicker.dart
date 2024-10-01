import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({super.key});

  @override
  State<Imagepicker> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  File? file;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        file = File(pickedImage.path);
        print(pickedImage.path);
      } else {
        print("Image is not Picked");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImagePicker"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 400,
            width: double.infinity,
            color: Colors.lightGreenAccent,
            child: Center(
              child: file == null
                  ? Text("Image is not Picked")
                  : Image.file(file!),
            ),
          ),
          ElevatedButton(
            onPressed: getImage,
            child: Text("Click pick image"),
          ),
        ],
      )),
    );
  }
}
