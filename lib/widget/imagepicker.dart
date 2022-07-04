import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerW extends StatefulWidget {
  const ImagePickerW({Key? key}) : super(key: key);

  @override
  State<ImagePickerW> createState() => _ImagePickerWState();
}

class _ImagePickerWState extends State<ImagePickerW> {
  final ImagePicker picker = ImagePicker();
  File? pickImage;
  File? pickImage2;

  fetchImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    final XFile? image2 = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    if (image2 == null) {
      return;
    }
    setState(() {
      pickImage = File(image.path);
      pickImage2 = File(image2.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Image Picker"),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 150,
            child: pickImage == null ? null : Image.file(pickImage!),
          ),
          SizedBox(
            height: 150,
            child: pickImage2 == null ? null : Image.file(pickImage2!),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: const Icon(Icons.add),
      ),
    );
  }
}
