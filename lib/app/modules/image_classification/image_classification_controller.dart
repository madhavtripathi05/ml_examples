import 'dart:io';

import 'package:get/get.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';

class ImageClassificationController extends GetxController {
  @override
  void onInit() async {
    final res = await Tflite.loadModel(
        model: "assets/models/mobilenet_v1_1.0_224.tflite",
        labels: "assets/models/mobilenet_v1_1.0_224.txt");
    print(res);
  }

  File pickedImage;
  bool loading = false;
  final picker = ImagePicker();
  String result;

  double trim(double d) => d.floorToDouble();

  Future classifyImage() async {
    final recognitions = await Tflite.runModelOnImage(path: pickedImage.path);
    print(recognitions);
    result = '';
    for (var r in recognitions) {
      result +=
          'Label: ${r['label']}, Confidence: ${trim(r['confidence'] * 100)}%\n';
    }
    print(result);
    update();
  }

  Future pickGalleryImage() async {
    var img = await picker.getImage(source: ImageSource.gallery);

    if (img == null) return null;

    pickedImage = File(img.path);
    loading = true;
    update();

    await classifyImage();

    loading = false;
    update();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
