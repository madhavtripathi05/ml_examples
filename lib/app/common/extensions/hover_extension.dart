import 'package:flutter/material.dart';

import 'package:ml_examples/app/common/widgets/translate_on_hover.dart';

extension HoverExtension on Widget {
  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }
}
