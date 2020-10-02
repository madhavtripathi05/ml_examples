import 'package:get/get.dart';

import 'package:ml_examples/app/modules/realtime_detection/realtime_detection_controller.dart';

class RealtimeDetectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RealtimeDetectionController>(
      () => RealtimeDetectionController(),
    );
  }
}
