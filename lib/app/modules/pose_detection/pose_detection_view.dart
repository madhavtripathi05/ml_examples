import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/modules/pose_detection/pose_detection_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/utils/app_utils.dart';

class PoseDetectionView extends GetView<PoseDetectionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Pose Estimation',
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
      body: GetPlatform.isWeb
          ? Center(
              child: Text(
                'Unsupported operation plz check app',
                style: TextStyle(fontSize: 20),
              ),
            )
          : buildBody(),
    );
  }

  Widget buildBody() {
    return GetBuilder<PoseDetectionController>(builder: (pc) {
      return ListView(physics: BouncingScrollPhysics(), children: [
        Center(child: Text('WIP...!')),
        GestureDetector(
          onTap: pc.pickGalleryImage,
          child: Container(
            margin: EdgeInsets.all(18),
            width: Get.width,
            child: pc.pickedImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(
                      pc.pickedImage,
                      fit: BoxFit.fill,
                    ),
                  )
                : Center(
                    child: Text(
                      'Tap here to select an Image',
                      textAlign: TextAlign.center,
                    ),
                  ),
          ),
        ),
        pc.loading || pc.result == null
            ? Container(
                height: 50,
                width: 50,
                child: pc.loading
                    ? Center(child: CircularProgressIndicator())
                    : Text(''))
            : Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Pose Detection',
                    style: kBoldTextGreen,
                  ),
                  SizedBox(height: 10),
                ],
              ),
        pc.result != null
            ? Container(
                margin: EdgeInsets.all(18),
                width: Get.width,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        pc.pickedImage,
                        width: Get.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ...pc.keyPoints
                  ],
                ),
              )
            : Text(''),
      ]);
    });
  }
}
