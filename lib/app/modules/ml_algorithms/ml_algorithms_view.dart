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
  }

  Widget buildBody() {
    return LayoutBuilder(builder: (context, c) {
      return ListView(
        physics: BouncingScrollPhysics(),
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
                        buildCard(
                                'OCR', 'assets/svgs/font.svg', Get.width * 0.4,
                                () {
                          Get.toNamed(Routes.OCR);
                        }, key: '__OCR__')
                            .moveUpOnHover,
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildCard('Image Caption Generator',
                                'assets/svgs/i2c.svg', Get.width * 0.4, () {
                          Get.toNamed(Routes.IMAGE_CAPTION);
                        }, key: '__IMAGE_CAPTION_GENERATOR__')
                            .moveUpOnHover,
                        buildCard(
                                'QnA with Context',
                                'assets/svgs/online_message.svg',
                                Get.width * 0.4, () {
                          Get.toNamed(Routes.QNA);
                        }, key: '__QNA__')
                            .moveUpOnHover,
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    buildCard(
                            'Sentiment Analysis',
                            'assets/svgs/sentiment_analysis.svg',
                            Get.width, () {
                      Get.toNamed(Routes.SENTIMENT_ANALYSIS);
                    }, key: '__SENTIMENT_ANALYSIS_M__')
                        .moveUpOnHover,
                    buildCard('Optical Character Recognition',
                            'assets/svgs/font.svg', Get.width, () {
                      Get.toNamed(Routes.OCR);
                    }, key: '__OCR_M__')
                        .moveUpOnHover,
                    buildCard('Image Caption Generator', 'assets/svgs/i2c.svg',
                            Get.width, () {
                      Get.toNamed(Routes.IMAGE_CAPTION);
                    }, key: '__IMAGE_CAPTION_GENERATOR_M__')
                        .moveUpOnHover,
                    buildCard('QnA with Context',
                            'assets/svgs/online_message.svg', Get.width, () {
                      Get.toNamed(Routes.QNA);
                    }, key: '__QNA__')
                        .moveUpOnHover,
                    buildCard('Style Transfer', 'assets/svgs/convert.svg',
                            Get.width, () {
                      Get.toNamed(Routes.STYLE_TRANSFER);
                    }, key: '__STYLE_TRANSFER__')
                        .moveUpOnHover,
                  ],
                ),
        ],
      );
    });
  }
}
