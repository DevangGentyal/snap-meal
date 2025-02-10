import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _openCamera() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnapMeal Camera")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image == null
                ? Text("No image captured", style: TextStyle(fontSize: 16))
                : Image.file(_image!,
                    width: 300, height: 300, fit: BoxFit.cover),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _openCamera,
              icon: Icon(Icons.camera),
              label: Text("Open Camera"),
            ),
          ],
        ),
      ),
    );
  }
}
