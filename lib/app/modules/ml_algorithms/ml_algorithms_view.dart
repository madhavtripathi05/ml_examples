import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/common.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/modules/ml_algorithms/ml_algorithms_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/common/extensions/hover_extension.dart';

class MlAlgorithmsView extends GetView<MlAlgorithmsController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: CustomAppBar(
          'ML Algorithms',
          leadings: [
            CustomAction(() {
              navigator.pop();
            }, FlutterIcons.back_ant)
          ],
          actions: [
            CustomAction(() {
              Get.offNamed(Routes.HOME);
            }, FlutterIcons.home_ant)
          ],
        ),
        body: buildBody(),
      );
    });
  }

  Widget buildBody() {
    return ListView(
      children: [
        Get.width > 500
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildCard(
                              'Sentiment Analysis',
                              'assets/svgs/sentiment_analysis.svg',
                              Get.width * 0.4, () {
                        Get.toNamed(Routes.SENTIMENT_ANALYSIS);
                      }, key: '__SENTIMENT_ANALYSIS__')
                          .moveUpOnHover,
                      buildCard('OCR', 'assets/svgs/font.svg', Get.width * 0.4,
                              () {
                        Get.toNamed(Routes.ML_ALGORITHMS);
                      }, key: '__OCR__')
                          .moveUpOnHover,
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildCard('Image Caption Generator',
                              'assets/svgs/i2c.svg', Get.width * 0.4, () {
                        Get.toNamed(Routes.CATEGORIES);
                      }, key: '__IMAGE_CAPTION_GENERATOR__')
                          .moveUpOnHover,
                      buildCard(
                              'QnA with Context',
                              'assets/svgs/online_message.svg',
                              Get.width * 0.4, () {
                        Get.toNamed(Routes.RESEARCH_PAPERS);
                      }, key: '__QNA__')
                          .moveUpOnHover,
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  buildCard('Sentiment Analysis',
                          'assets/svgs/sentiment_analysis.svg', Get.width, () {
                    Get.toNamed(Routes.SENTIMENT_ANALYSIS);
                  }, key: '__SENTIMENT_ANALYSIS__')
                      .moveUpOnHover,
                  buildCard('Optical Character Recognition',
                          'assets/svgs/font.svg', Get.width, () {
                    Get.toNamed(Routes.ML_ALGORITHMS);
                  }, key: '__OCR__')
                      .moveUpOnHover,
                  buildCard('Image Caption Generator', 'assets/svgs/i2c.svg',
                          Get.width, () {
                    Get.toNamed(Routes.CATEGORIES);
                  }, key: '__IMAGE_CAPTION_GENERATOR__')
                      .moveUpOnHover,
                  buildCard('QnA with Context',
                          'assets/svgs/online_message.svg', Get.width, () {
                    Get.toNamed(Routes.RESEARCH_PAPERS);
                  }, key: '__QNA__')
                      .moveUpOnHover,
                ],
              ),
      ],
    );
  }
}
