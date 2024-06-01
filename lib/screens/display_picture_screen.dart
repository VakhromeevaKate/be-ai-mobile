import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:onnxruntime/onnxruntime.dart';

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;
  final OrtSession? session;

  const DisplayPictureScreen({super.key, required this.imagePath, required this.session});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture')),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.file(File(imagePath)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('inputCount: ${session!.inputCount}'),
                  Text('inputNames: ${session!.inputNames.toString()}'),
                  Text('outputCount: ${session!.outputCount.toString()}'),
                  Text('outputNames: ${session!.outputNames.toString()}'),
                  Text('address: ${session!.address.toString()}'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}