import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/services/api_service.dart';

class SentimentAnalysisController extends GetxController {
  Map<String, dynamic> results;
  String data;
  bool isLoading = false;

  final queryController = TextEditingController();

  double trim(double d) => d.floorToDouble();
  Future<void> fetchData() async {
    final stopwatch = Stopwatch()..start();
    isLoading = true;
    update();
    results = await ApiService().sendText(queryController.text);
    data =
        'Sentiment: ${results['sentiment']} \nPositive: ${trim(results['confidenceScores']['positive'] * 100)}% \nNegative: ${trim(results['confidenceScores']['negative'] * 100)}% \nNeutral: ${trim(results['confidenceScores']['neutral'] * 100)}%\n';
    isLoading = false;
    print('results: $data');
    update();
    print('time: ${stopwatch.elapsed.inMilliseconds} ms');
  }

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}
}
