import 'package:get/get.dart';

import 'package:ml_examples/app/modules/research_papers/research_papers_controller.dart';

class ResearchPapersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResearchPapersController>(
      () => ResearchPapersController(),
    );
  }
}
