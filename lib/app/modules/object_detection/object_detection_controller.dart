import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/helpers/helpers.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';

class ObjectDetectionController extends GetxController {
  String model = "YOLO";
  bool loading = false;
  final picker = ImagePicker();
  File pickedImage;
  String result;
  List<Widget> boxes = [];
  double trim(double d) => d.floorToDouble();

  @override
  void onInit() async {
    final res = await Tflite.loadModel(
      model: "assets/models/yolov2_tiny.tflite",
      labels: "assets/models/yolov2_tiny.txt",
    );
    print(res);
  }

  Future<void> detectObject() async {
    final recognitions = await Tflite.detectObjectOnImage(
      path: pickedImage.path,
      model: model,
      imageMean: model == "YOLO" ? 0 : 127.5,
      imageStd: model == "YOLO" ? 255.0 : 127.5,
      numResultsPerClass: 1,
      threshold: model == "YOLO" ? 0.2 : 0.4,
    );
    result = '';
    print('recognitions: $recognitions');
    for (var r in recognitions) {
      result +=
          'Detected class: ${r['detectedClass']}, Confidence: ${trim(r['confidenceInClass'] * 100)}%\n';
    }
    var imgHeight = getHeightWidth(pickedImage)['height'];
    var imgWidth = getHeightWidth(pickedImage)['width'];
    boxes = renderBoxes(
        screenHeight: Get.height,
        screenWidth: Get.width,
        imageHeight: imgHeight,
        imageWidth: imgWidth,
        recognitions: recognitions);
    print(result);
    update();
  }

  Future pickGalleryImage() async {
    var img = await picker.getImage(source: ImageSource.gallery);

    if (img == null) return null;

    pickedImage = File(img.path);
    loading = true;
    update();
    await detectObject();

    loading = false;
    update();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
