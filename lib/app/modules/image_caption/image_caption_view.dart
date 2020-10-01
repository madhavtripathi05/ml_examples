import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/common/extensions/hover_extension.dart';
import 'package:ml_examples/app/modules/image_caption/image_caption_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';

class ImageCaptionView extends GetView<ImageCaptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Image Caption',
        leadings: [
          CustomAction(() {
            navigator.pop();
          }, FlutterIcons.back_ant)
              .moveUpOnHover
        ],
        actions: [
          CustomAction(() {
            Get.offNamed(Routes.HOME);
          }, FlutterIcons.home_ant)
              .moveUpOnHover
        ],
      ),
      body: Center(
        child: Text(
          'ImageCaptionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
