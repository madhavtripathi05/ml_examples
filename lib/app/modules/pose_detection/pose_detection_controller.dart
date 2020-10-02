import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/helpers/helpers.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';

class PoseDetectionController extends GetxController {
  @override
  void onInit() async {
    final res = await Tflite.loadModel(
        model: "assets/models/posenet_mv1_075_float_from_checkpoints.tflite");
    print(res);
  }

  File pickedImage;
  bool loading = false;
  final picker = ImagePicker();
  String result;
  List<Widget> keyPoints;
  double trim(double d) => d.floorToDouble();

  Future runPosenet() async {
    final recognitions = await Tflite.runPoseNetOnImage(
      path: pickedImage.path,
      numResults: 5,
    );

    result = 'done';

    print(recognitions);
    var imgHeight = getHeightWidth(pickedImage)['height'];
    var imgWidth = getHeightWidth(pickedImage)['width'];
    keyPoints = renderKeypoints(
        screenHeight: Get.height,
        screenWidth: Get.width,
        imageHeight: imgHeight,
        imageWidth: imgWidth,
        recognitions: recognitions);
    result = '';
    // for (var r in recognitions) {
    //   result +=
    //       'Label: ${r['label']} Confidence: ${trim(r['confidence']) * 100}%\n';
    // }
    update();
    // print(result);
  }

  Future pickGalleryImage() async {
    var img = await picker.getImage(source: ImageSource.gallery);

    if (img == null) return null;

    pickedImage = File(img.path);
    loading = true;
    update();
    await runPosenet();

    loading = false;
    update();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
