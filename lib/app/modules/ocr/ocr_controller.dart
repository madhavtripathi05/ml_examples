import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_examples/app/services/api_service.dart';

class OcrController extends GetxController {
  File pickedImage;
  final picker = ImagePicker();
  final apiService = ApiService();
  bool loading = false;
  String resultText;

  void parseResponse(var res) {
    print('$res');
    String r = '';
    var predictions = res['text'];

    for (var prediction in predictions) {
      var data = prediction;
      for (var d in data) {
        r += '$d\n';
        print('caption: $d ');
      }
    }

    resultText = r ?? '';
    update();
  }

  pickGalleryImage() async {
    var image = await picker.getImage(source: ImageSource.gallery);

    if (image == null) return null;

    pickedImage = File(image.path);
    loading = true;
    update();
    final data = await apiService.ocr(pickedImage);
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
