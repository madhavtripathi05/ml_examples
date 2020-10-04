import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/data/texts.dart';
import 'package:ml_examples/app/common/models/category_item.dart';
import 'package:ml_examples/app/common/widgets/common.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/modules/get_started/detail_page.dart';
import 'categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Categories',
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
          'Unsupervised Learning',
          'assets/svgs/basics.svg',
          Get.width,
          () {
            Get.to(DetailPage(detail: CategoryItem.fromJson(basics[2])));
          },
        ),
        buildCard(
          'Supervised Learning',
          'assets/svgs/data_extraction.svg',
          Get.width,
          () {
            Get.to(DetailPage(detail: CategoryItem.fromJson(basics[1])));
          },
        ),
        buildCard(
          'Reinforcement Learning',
          'assets/svgs/algorithms.svg',
          Get.width,
          () {
            // Get.toNamed();
          },
        ),
      ],
    );
  }
}
