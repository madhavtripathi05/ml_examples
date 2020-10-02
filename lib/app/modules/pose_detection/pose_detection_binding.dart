import 'package:get/get.dart';

import 'package:ml_examples/app/modules/pose_detection/pose_detection_controller.dart';

class PoseDetectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PoseDetectionController>(
      () => PoseDetectionController(),
    );
  }
}
