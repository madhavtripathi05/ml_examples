import 'package:get/get.dart';

import 'package:ml_examples/app/modules/ocr/ocr_controller.dart';

class OcrBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OcrController>(
      () => OcrController(),
    );
  }
}
