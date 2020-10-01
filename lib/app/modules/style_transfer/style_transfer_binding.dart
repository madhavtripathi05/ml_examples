import 'package:get/get.dart';

import 'package:ml_examples/app/modules/style_transfer/style_transfer_controller.dart';

class StyleTransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StyleTransferController>(
      () => StyleTransferController(),
    );
  }
}
