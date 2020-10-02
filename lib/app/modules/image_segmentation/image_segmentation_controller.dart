import 'dart:io';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class ImageSegmentationController extends GetxController {
  @override
  void onInit() async {
    final res = await Tflite.loadModel(
        model: "assets/models/deeplabv3_257_mv_gpu.tflite");
    print(res);
  }

  File pickedImage;
  bool loading = false;
  final picker = ImagePicker();
  String result;
  Uint8List segmentedImage;

  double trim(double d) => d.floorToDouble();

  Future runSegmentNet() async {
    segmentedImage = await Tflite.runSegmentationOnImage(
      path: pickedImage.path,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    update();
  }

  Future pickGalleryImage() async {
    var img = await picker.getImage(source: ImageSource.gallery);

    if (img == null) return null;

    pickedImage = File(img.path);
    loading = true;
    update();
    await runSegmentNet();

    loading = false;
    update();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
