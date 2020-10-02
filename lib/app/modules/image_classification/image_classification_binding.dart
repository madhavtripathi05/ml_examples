import 'package:get/get.dart';

import 'package:ml_examples/app/modules/image_classification/image_classification_controller.dart';

class ImageClassificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageClassificationController>(
      () => ImageClassificationController(),
    );
  }
}
