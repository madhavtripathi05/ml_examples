import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CustomAppBar extends PreferredSize {
  final String title;
  final double height;
  final List<Widget> leadings;
  final List<Widget> actions;
  final BuildContext ctx;

  CustomAppBar(this.title,
      {this.leadings = const [],
      this.actions = const [],
      this.height = 120,
      this.ctx});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(ctx) {
    return Container(
      height: preferredSize.height,
      color: Colors.transparent,
      alignment: Alignment.center,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 25,
                    top: 5,
                    bottom: 5,
                    child: Row(
                      children: leadings,
                    ),
                  ),
                  Center(
                    child: Text(
                      '${this.title}',
                      style: TextStyle(
                        color: Get.theme.primaryColor,
                        fontSize: Get.width > 500 ? 32 : 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 25,
                    top: 5,
                    bottom: 5,
                    child: Row(
                      children: actions,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
