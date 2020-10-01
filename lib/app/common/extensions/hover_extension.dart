import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ml_examples/app/common/widgets/translate_on_hover.dart';

extension HoverExtension on Widget {
  Widget get moveUpOnHover {
    return GetPlatform.isWeb
        ? TranslateOnHover(child: this)
        : ThisContainer(child: this);
  }
}

class ThisContainer extends StatelessWidget {
  ThisContainer({Key key, this.child}) : super(key: key);
  final child;
  @override
  Widget build(BuildContext context) {
    return Container(child: child);
  }
}
