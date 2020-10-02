import 'package:get/get.dart';

import 'package:ml_examples/app/modules/object_detection/object_detection_controller.dart';

class ObjectDetectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ObjectDetectionController>(
      () => ObjectDetectionController(),
    );
  }
}
