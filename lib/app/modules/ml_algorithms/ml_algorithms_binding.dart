import 'package:get/get.dart';

import 'package:ml_examples/app/modules/ml_algorithms/ml_algorithms_controller.dart';

class MlAlgorithmsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MlAlgorithmsController>(
      () => MlAlgorithmsController(),
    );
  }
}
