import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/data/texts.dart';
import 'package:ml_examples/app/services/api_service.dart';

class QnaController extends GetxController {
  var randomContext = contexts[Random().nextInt(contexts.length - 1)];
  final questionController = TextEditingController();
  final apiService = ApiService();
  bool loading = false;
  String resultText;

  void changeContext() {
    randomContext = contexts[Random().nextInt(contexts.length - 1)];
    update();
  }

  Future fetchAnswers() async {
    loading = true;
    update();

    if (questionController.text.length > 7) {
      final res = await apiService.qna(randomContext, questionController.text);
      print(res);
      resultText = res ?? '';
      update();
    } else
      Get.rawSnackbar(
          title: 'Warning!', message: 'Please Enter a valid question');

    loading = false;
    update();
  }

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}
}
