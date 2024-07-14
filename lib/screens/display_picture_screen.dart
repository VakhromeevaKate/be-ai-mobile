import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

import 'package:onnxruntime/onnxruntime.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// A widget that displays the picture taken by the user.

class DisplayPictureScreen extends StatefulWidget {
  const DisplayPictureScreen({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  DisplayPictureScreenState createState() => DisplayPictureScreenState();
}
class DisplayPictureScreenState extends State<DisplayPictureScreen> {
  late OrtSession? _session = null;
  late List<OrtValue?>? _outputs = null;
  String startInference = '';
  String finishedInference = '';
  bool loading = false;

  String formattedDateTime(DateTime datetime) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:MM:ss');
    final String formatted = formatter.format(datetime);
    return formatted;
  }

  @override
  initState() {
    super.initState();
    File imageFile = File(widget.imagePath);
    OrtEnv.instance.init();
    inferModel();
    runForward(imageFile);
  }

  @override
  void dispose() {
    super.dispose();
    OrtEnv.instance.release();
    print('display picture dispose called');
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

  Future<ui.Image> floatTensorToImage(List tensorData) {
    final outRgbaFloats = Uint8List(4 * 224 * 224);
    for (int x = 0; x < 224; x++) {
      for (int y = 0; y < 224; y++) {
        final index = x * 224 * 4 + y * 4;
        outRgbaFloats[index + 0] = tensorData[0][0][x][y].clamp(0, 255).toInt(); // r
        outRgbaFloats[index + 1] = tensorData[0][1][x][y].clamp(0, 255).toInt(); // g
        outRgbaFloats[index + 2] = tensorData[0][2][x][y].clamp(0, 255).toInt(); // b
        // outRgbaFloats[index + 3] = 255; // a
      }
    }
    final completer = Completer<ui.Image>();
    ui.decodeImageFromPixels(outRgbaFloats, 224, 224, ui.PixelFormat.rgba8888, (ui.Image image) {
      completer.complete(image);
    });

    return completer.future;
  }

  Future<void> performInference(File imageFile) async {
    final Uint8List bytes = await imageFile.readAsBytes();
    final decodedImage = await decodeImageFromList(bytes);
    final rgbFloats = await imageToFloatTensor(decodedImage);

    loading = true;

    print('performInference started');
    final startTime = DateTime.now();
    startInference = formattedDateTime(startTime);
    final imgWidth = 512; //image?.width ?? 512;
    final imgHeight = 512; //image?.height ?? 512;

    final inputOrt = OrtValueTensor.createTensorWithDataList(Float32List.fromList(rgbFloats), [1, 3, imgWidth, imgHeight]);

    final inputs = {'input0':inputOrt};

    final runOptions = OrtRunOptions();
    List<OrtValue?>? outputs;
    try {
      if (_session != null) {
        outputs = await _session?.runAsync(runOptions, inputs);
        inputOrt.release();
        runOptions.release();
        _session?.release();
        OrtEnv.instance.release();
      }
      if (outputs != null) {
        print('outputs exists!');
        for (var element in outputs) {
          element?.release();
        }
        _outputs = outputs;
      } else {
        print('performInference Smth gone wrong with outputs - they are empty');
      }
    } catch (error) {
      print('performInference Error occured while performInference: $error');
    } finally {
      loading = false;
      final endTime = DateTime.now();
      finishedInference = formattedDateTime(endTime);
      print('performInference infer cost time=${endTime.microsecondsSinceEpoch - startTime.microsecondsSinceEpoch}ms');
    }
  }

  Future<void> runForward(File imageFile) async {
    try {
      await performInference(imageFile);
    } catch (e) {
      loading = false;
      print('performInference failed ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!loading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Display the Picture')),
        // The image is stored as a file on the device. Use the `Image.file`
        // constructor with the given path to display the image.
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.file(File(widget.imagePath)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Output size: ${_outputs?.length ?? 'unknown'}'),
                    Text('address: ${_session?.address.toString()}'),
                    Text('startInference: ${startInference?.toString() ?? 'unknown'}'),
                    Text('finishedInference: ${finishedInference.toString() ?? 'unknown'}'),
                    //Text('inputNames: ${session!.inputNames.toString()}'),
                    //Text('outputCount: ${session!.outputCount.toString()}'),
                    //Text('outputNames: ${session!.outputNames.toString()}'),
                    //Text('address: ${session!.address.toString()}'),
                  ],
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: const Text('Display the Picture')),
        // The image is stored as a file on the device. Use the `Image.file`
        // constructor with the given path to display the image.
        body: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.white,
            size: 200,
          ),
        ),
      );
    }
  }
}