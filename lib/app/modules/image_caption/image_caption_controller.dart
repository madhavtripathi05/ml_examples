import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_examples/app/services/api_service.dart';

class ImageCaptionController extends GetxController {
  File pickedImage;
  final picker = ImagePicker();
  final apiService = ApiService();
  bool loading = false;
  String resultText;

  void parseResponse(var res) {
    String r = '';
    var predictions = res['predictions'];

    for (var prediction in predictions) {
      var caption = prediction['caption'];
      var probability = prediction['probability'];
      print('caption: $caption prob:$probability');
      r += '$caption\n';
    }
    resultText = r;
    update();
    print('$predictions');
  }

  pickGalleryImage() async {
    var image = await picker.getImage(source: ImageSource.gallery);

    if (image == null) return null;

    pickedImage = File(image.path);
    loading = true;
    update();

    final data = await apiService.imageToCaption(pickedImage);
    parseResponse(data);

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
