import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAction extends StatelessWidget {
  final Function action;
  final IconData icon;
  final BuildContext ctx;

  CustomAction(this.action, this.icon, {this.ctx});

  @override
  Widget build(ctx) {
    return Padding(
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: 50,
        height: 50,
        child: FlatButton(
          onPressed: action,
          padding: EdgeInsets.zero,
          // color: Color(0xffffffff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Icon(
                icon,
                size: 21,
                color: Get.theme.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
