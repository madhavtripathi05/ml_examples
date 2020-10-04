import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/models/category_item.dart';
import 'package:ml_examples/app/common/widgets/common.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/routes/app_pages.dart';

class DetailPage extends StatelessWidget {
  final CategoryItem detail;

  const DetailPage({this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        '${detail.title}',
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
    return Container(
      margin: EdgeInsets.all(18),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildImage(detail.images.first, 200),
          SizedBox(height: 20),
          Text(detail.description),
          Container(
            padding: EdgeInsets.all(18),
            color: Get.isDarkMode ? Color(0xff222222) : Colors.grey[300],
            child: Text(detail.example),
          ),
        ],
      ),
    );
  }
}
