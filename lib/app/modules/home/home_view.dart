import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/data/texts.dart';
import 'package:ml_examples/app/common/extensions/hover_extension.dart';
import 'package:ml_examples/app/common/widgets/common.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/modules/home/home_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/utils/app_utils.dart';

class HomeView extends GetView<HomeController> {
  final hc = HomeController.to;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: hc.scaffoldKey,
        drawer: buildDrawer(),
        appBar: CustomAppBar('ML Dashboard', leadings: [
          CustomAction(() {
            hc.scaffoldKey.currentState.openDrawer();
          }, FlutterIcons.menu_mco)
        ], actions: [
          CustomAction(() {
            Get.toNamed(Routes.SEARCH);
          }, FlutterIcons.search_faw5s)
        ]),
        body: buildBody());
  }

  Widget buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(FlutterIcons.info_circle_faw),
            title: Text('About'),
          ),
          ListTile(
            leading: Icon(FlutterIcons.theme_light_dark_mco),
            title: Text('Change Theme'),
            onTap: () {
              Get.changeTheme(Get.isDarkMode ? kLightTheme : kDarkTheme);
            },
          ),
        ],
      ),
    );
  }

  Widget buildBody() {
    return LayoutBuilder(builder: (context, c) {
      return ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SelectableText(
              quotes[Random().nextInt(quotes.length - 1)],
              style: kQuoteTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Get.width > 500
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildCard('Get Started', 'assets/svgs/master_plan.svg',
                                Get.width * 0.4, () {
                          Get.toNamed(Routes.GET_STARTED);
                        }, key: '__GET_STARTED__')
                            .moveUpOnHover,
                        buildCard(
                                'ML Algorithms',
                                'assets/svgs/growth_curve.svg',
                                Get.width * 0.4, () {
                          Get.toNamed(Routes.ML_ALGORITHMS);
                        }, key: '__ML_ALGORITHMS__')
                            .moveUpOnHover,
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildCard(
                                'Categories',
                                'assets/svgs/processing_thoughts.svg',
                                Get.width * 0.4, () {
                          Get.toNamed(Routes.CATEGORIES);
                        }, key: '__CATEGORIES__')
                            .moveUpOnHover,
                        buildCard(
                                'Research Papers',
                                'assets/svgs/marketing.svg',
                                Get.width * 0.4, () {
                          Get.toNamed(Routes.RESEARCH_PAPERS);
                        }, key: '__RESEARCH_PAPERS__')
                            .moveUpOnHover,
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    buildCard('Get Started', 'assets/svgs/master_plan.svg',
                            Get.width, () {
                      Get.toNamed(Routes.GET_STARTED);
                    }, key: '__GET_STARTED_M__')
                        .moveUpOnHover,
                    buildCard('ML Algorithms', 'assets/svgs/growth_curve.svg',
                            Get.width, () {
                      Get.toNamed(Routes.ML_ALGORITHMS);
                    }, key: '__ML_ALGORITHMS_M__')
                        .moveUpOnHover,
                    buildCard(
                            'Categories',
                            'assets/svgs/processing_thoughts.svg',
                            Get.width, () {
                      Get.toNamed(Routes.CATEGORIES);
                    }, key: '__CATEGORIES_M__')
                        .moveUpOnHover,
                    buildCard('Research Papers', 'assets/svgs/marketing.svg',
                            Get.width, () {
                      Get.toNamed(Routes.RESEARCH_PAPERS);
                    }, key: '__RESEARCH_PAPERS_M__')
                        .moveUpOnHover,
                  ],
                ),
        ],
      );
    });
  }
}
