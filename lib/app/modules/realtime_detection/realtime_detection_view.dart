import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/modules/realtime_detection/realtime_detection_controller.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';

class RealtimeDetectionView extends GetView<RealtimeDetectionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Realtime Detection'),
      body: GetPlatform.isWeb
          ? Center(
              child: Text(
                'Unsupported in browser, plz use app',
                style: TextStyle(fontSize: 20),
              ),
            )
          : buildBody(),
    );
  }

  Widget buildBody() {
    return GetBuilder<RealtimeDetectionController>(builder: (rc) {
      // TODO: Implement realtime detection
      return Text('TO BE IMPLEMENTED!');
    });
  }
}
