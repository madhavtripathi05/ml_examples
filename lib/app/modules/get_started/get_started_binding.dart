import 'package:get/get.dart';

import 'package:ml_examples/app/modules/get_started/get_started_controller.dart';

class GetStartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetStartedController>(
      () => GetStartedController(),
    );
  }
}
