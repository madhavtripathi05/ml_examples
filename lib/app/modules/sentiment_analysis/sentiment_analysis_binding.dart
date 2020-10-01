import 'package:get/get.dart';

import 'package:ml_examples/app/modules/sentiment_analysis/sentiment_analysis_controller.dart';

class SentimentAnalysisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SentimentAnalysisController>(
      () => SentimentAnalysisController(),
    );
  }
}
