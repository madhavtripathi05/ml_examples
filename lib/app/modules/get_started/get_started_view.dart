import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/modules/get_started/get_started_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';

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
      body: Center(
        child: Text(
          'GetStartedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
