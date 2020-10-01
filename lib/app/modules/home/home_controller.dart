import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  static final to = Get.find<HomeController>();

  final scrollController = ScrollController();
  bool hideAppBar = false;

  @override
  void onInit() {}

  @override
  void onReady() {
    scrollController.addListener(() {
      scrollController.offset > 50 ? hideAppBar = true : hideAppBar = false;
      update();
    });
  }

  @override
  void onClose() {}
}
