import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/data/texts.dart';
import 'package:ml_examples/app/common/models/category_item.dart';
import 'package:ml_examples/app/common/widgets/common.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/modules/get_started/detail_page.dart';
import 'package:ml_examples/app/routes/app_pages.dart';

class MlBasics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'ML Basics',
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
        buildSvg('assets/svgs/basics.svg', 200),
        SizedBox(height: 20),
        for (var b in basics) ...[
          buildCard(b['title'], b['images'][0], 100,
              () => Get.to(DetailPage(detail: CategoryItem.fromJson(b))),
              image: true)
        ]
      ],
    );
  }
}
