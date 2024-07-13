// import 'dart:math';

import 'dart:ui' as ui;
import 'package:image/image.dart' as img;
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/colors/light_colors.dart';
import 'display_picture_screen.dart';
import 'package:onnxruntime/onnxruntime.dart';

// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late OrtSession _session;
  List<OrtValue?>? _outputs;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
    OrtEnv.instance.init();
    inferModel();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
    OrtEnv.instance.release();
  }

  void inferModel() async {
    final sessionOptions = OrtSessionOptions();
    const assetFileName = 'assets/models/model.onnx';
    final rawAssetFile = await rootBundle.load(assetFileName);
    final bytes = rawAssetFile.buffer.asUint8List();
    _session = OrtSession.fromBuffer(bytes, sessionOptions!);
  }

  Future<List<double>> imageToFloatTensor(ui.Image image) async {
    final imageAsFloatBytes = (await image.toByteData(format: ui.ImageByteFormat.rawRgba))!;
    final rgbaUints = Uint8List.view(imageAsFloatBytes.buffer);

    final indexed = rgbaUints.indexed;
    return [
      ...indexed.where((e) => e.$1 % 4 == 0).map((e) => e.$2.toDouble()),
      ...indexed.where((e) => e.$1 % 4 == 1).map((e) => e.$2.toDouble()),
      ...indexed.where((e) => e.$1 % 4 == 2).map((e) => e.$2.toDouble()),
    ];
  }

  Future<void> performInference(XFile imageXFile) async {
    // final imagePath = imageXFile.path;
    final Uint8List bytes = await imageXFile.readAsBytes();
    final img.Image? image = img.decodeImage(bytes);

    // ByteData blissBytes = await rootBundle.load(imagePath);
    // print('performInference $blissBytes');

    // final decodedImage = await decodeImageFromList(Uint8List.sublistView(blissBytes));
    final decodedImage = await decodeImageFromList(bytes);
    final rgbFloats = await imageToFloatTensor(decodedImage);

    print('performInference started');
    final startTime = DateTime.now().millisecondsSinceEpoch;
    final imgWidth = 512; //image?.width ?? 512;
    final imgHeight = 512; //image?.height ?? 512;

    final inputOrt = OrtValueTensor.createTensorWithDataList(Float32List.fromList(rgbFloats), [1, 3, imgWidth, imgHeight]);

    final inputs = {'input0':inputOrt};

    final runOptions = OrtRunOptions();
    var outputs;
    try {
      outputs = await _session.runAsync(runOptions, inputs);
      inputOrt.release();
      runOptions.release();
      if (outputs != null) {
        outputs.forEach((element) {
          element?.release();
        });
        _outputs = outputs;
      } else {
        print('performInference Smth gone wrong with outputs - they are empty');
      }
    } catch (error) {
      print('performInference Error occured while performInference: $error');
    }

    final endTime = DateTime.now().millisecondsSinceEpoch;
    print('performInference infer cost time=${endTime - startTime}ms');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Take a picture')),
        // You must wait until the controller is initialized before displaying the
        // camera preview. Use a FutureBuilder to display a loading spinner until the
        // controller has finished initializing.
        body: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the Future is complete, display the preview.
              return CameraPreview(_controller);
            } else {
              // Otherwise, display a loading indicator.
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: LightColors.kGreen,
          shape: const CircleBorder(),
          // Provide an onPressed callback.
          onPressed: () async {
            // Take the Picture in a try / catch block. If anything goes wrong,
            // catch the error.
            try {
              // Ensure that the camera is initialized.
              await _initializeControllerFuture;

              // Attempt to take a picture and get the file `image`
              // where it was saved.
              final imageXFile = await _controller.takePicture();
              // final path = imageXFile.path;
              // final bytes = await imageXFile.readAsBytes();
              // final img.Image? image = img.decodeImage(bytes);

              try {
                await performInference(imageXFile);
              } catch (e) {
                print('performInference failed ${e.toString()}');
              }


              if (!context.mounted) return;

              // If the picture was taken, display it on a new screen.
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DisplayPictureScreen(
                    // Pass the automatically generated path to
                    // the DisplayPictureScreen widget.
                    imagePath: imageXFile.path,
                    session: _session,
                    outputs: _outputs,
                  ),
                ),
              );
            } catch (e) {
              // If an error occurs, log the error to the console.
              if (kDebugMode) {
                // ToDo: add logging when backend appears
                print(e);
              }
            }
          },
          child: const Icon(Icons.camera_alt, color: Colors.white,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
