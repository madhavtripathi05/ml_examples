import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/common.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/modules/get_started/deploying_models_view.dart';
import 'package:ml_examples/app/modules/get_started/get_started_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';

import 'ml_basics_view.dart';

class GetStartedView extends GetView<GetStartedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Get Started ',
        leadings: [
          CustomAction(() {
            Get.back();
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
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        buildCard(
          'ML Basics',
          'assets/svgs/basics.svg',
          Get.width,
          () {
            Get.to(MlBasics());
          },
        ),
        buildCard(
          'Deploying Models',
          'assets/svgs/data_extraction.svg',
          Get.width,
          () {
            Get.to(DeployingModels());
          },
        ),
        buildCard(
          'Examples',
          'assets/svgs/algorithms.svg',
          Get.width,
          () {
            Get.toNamed(Routes.ML_ALGORITHMS);
          },
        ),
      ],
    );
  }
}
