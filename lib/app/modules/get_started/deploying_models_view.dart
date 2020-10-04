import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/common.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/utils/app_utils.dart';

class DeployingModels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Deploying Models',
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
    return Container(
      margin: EdgeInsets.all(18),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildSvg('assets/svgs/checklist.svg', 200),
          SizedBox(height: 20),
          Text(
            'Making APIs',
            style: kBoldText,
          ),
          Text('Stuff'),
          SizedBox(height: 10),
          Text(
            'Using TF JS',
            style: kBoldText,
          ),
          Text('Stuff'),
          SizedBox(height: 10),
          Text(
            'On Device using TFLite',
            style: kBoldText,
          ),
          Text('Stuff'),
        ],
      ),
    );
  }
}
