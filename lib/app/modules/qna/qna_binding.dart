import 'package:get/get.dart';

import 'package:ml_examples/app/modules/qna/qna_controller.dart';

class QnaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QnaController>(
      () => QnaController(),
    );
  }
}
