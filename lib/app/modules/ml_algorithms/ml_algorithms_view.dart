import 'package:flutter/foundation.dart';
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
                    buildCard(
                            'Image Classification',
                            'assets/svgs/image_classification.svg',
                            Get.width, () async {
                      if (!kIsWeb) {
                        // final rc = RealtimeDetectionController.to;

                        // rc.model = mobilenet;
                        // await rc.loadModel();
                        // Get.toNamed(Routes.REALTIME_DETECTION);
                        Get.toNamed(Routes.IMAGE_CLASSIFICATION);
                      } else
                        Get.rawSnackbar(
                            title: 'Alert!',
                            message:
                                'Sorry! you can\'t open this in browser please try App!');
                    }, key: '__IMAGE_CLASSIFICATION__')
                        .moveUpOnHover,
                    buildCard('Object Detection', 'assets/svgs/team_up.svg',
                            Get.width, () async {
                      if (!kIsWeb) {
                        // final rc = RealtimeDetectionController.to;

                        // rc.model = yolo;
                        // await rc.loadModel();
                        // Get.toNamed(Routes.REALTIME_DETECTION);

                        Get.toNamed(Routes.OBJECT_DETECTION);
                      } else
                        Get.rawSnackbar(
                            title: 'Alert!',
                            message:
                                'Sorry! you can\'t open this in browser please try App!');
                    }, key: '__OBJECT_DETECTION__')
                        .moveUpOnHover,
                    buildCard('Pose Estimation', 'assets/svgs/pose.svg',
                            Get.width, () async {
                      if (!kIsWeb) {
                        // final rc = RealtimeDetectionController.to;

                        // rc.model = posenet;
                        // await rc.loadModel();
                        // Get.toNamed(Routes.REALTIME_DETECTION);

                        Get.toNamed(Routes.POSE_DETECTION);
                      } else
                        Get.rawSnackbar(
                            title: 'Alert!',
                            message:
                                'Sorry! you can\'t open this in browser please try App!');
                    }, key: '__POSE_ESTIMATION__')
                        .moveUpOnHover,
                    buildCard('Image Segmentation', 'assets/svgs/process.svg',
                            Get.width, () async {
                      if (!kIsWeb) {
                        // final rc = RealtimeDetectionController.to;

                        // rc.model = posenet;
                        // await rc.loadModel();
                        // Get.toNamed(Routes.REALTIME_DETECTION);

                        Get.toNamed(Routes.IMAGE_SEGMENTATION);
                      } else
                        Get.rawSnackbar(
                            title: 'Alert!',
                            message:
                                'Sorry! you can\'t open this in browser please try App!');
                    }, key: '__IMAGE_SEGMENTATION__')
                        .moveUpOnHover,
                  ],
                ),
        ],
      );
    });
  }
}
