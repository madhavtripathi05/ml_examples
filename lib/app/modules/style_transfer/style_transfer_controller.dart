import 'dart:io';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_examples/app/services/api_service.dart';

class StyleTransferController extends GetxController {
  File pickedImage;
  final picker = ImagePicker();
  final apiService = ApiService();
  bool loading = false;
  Uint8List base64image;
  String selected = 'mosaic';

  onSelected(val) {
    selected = val;
    update();
  }

  pickGalleryImage() async {
    var image = await picker.getImage(source: ImageSource.gallery);

    if (image == null) return null;

    pickedImage = File(image.path);
    loading = true;
    update();

    base64image = await apiService.styleTransfer(pickedImage, selected);

    loading = false;
    update();
  }

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}
}
