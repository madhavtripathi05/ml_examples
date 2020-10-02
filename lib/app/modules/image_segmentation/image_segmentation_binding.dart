import 'package:get/get.dart';

import 'package:ml_examples/app/modules/image_segmentation/image_segmentation_controller.dart';

class ImageSegmentationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageSegmentationController>(
      () => ImageSegmentationController(),
    );
  }
}
