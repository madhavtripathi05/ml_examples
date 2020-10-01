import 'package:get/get.dart';

import 'package:ml_examples/app/modules/image_caption/image_caption_controller.dart';

class ImageCaptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageCaptionController>(
      () => ImageCaptionController(),
    );
  }
}
