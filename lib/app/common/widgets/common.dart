import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/utils/app_utils.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

Widget buildCard(String text, String imagePath, double size, Function onTap,
    {String key}) {
  return Container(
    width: size,
    key: Key(key),
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: onTap,
      child: Card(
        elevation: 7,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(8.0),
            child: buildSvg(imagePath, 100),
          ),
          Flexible(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: kBoldText,
            ),
          )
        ]),
      ),
    ),
  );
}

Widget getCodeView(String codeContent, double fontSize) {
  codeContent = codeContent.replaceAll('\r\n', '\n');
  final style = Get.isDarkMode
      ? SyntaxHighlighterStyle.darkThemeStyle()
      : SyntaxHighlighterStyle.lightThemeStyle();
  return Container(
    constraints: BoxConstraints.expand(),
    child: Scrollbar(
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SelectableText.rich(
            TextSpan(
              style: TextStyle(fontFamily: firaCodeFont, fontSize: fontSize)
                  .apply(fontSizeFactor: 1.0),
              children: <TextSpan>[
                DartSyntaxHighlighter(style).format(codeContent)
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget buildSvg(String imagePath, double size) {
  return GetPlatform.isWeb
      ? Image.network(
          imagePath,
          width: size,
          height: size,
          fit: BoxFit.contain,
        )
      : SvgPicture.asset(
          imagePath,
          width: size,
          height: size,
          fit: BoxFit.contain,
          placeholderBuilder: (_) => Container(
            width: 30,
            height: 30,
            padding: EdgeInsets.all(30),
            child: CircularProgressIndicator(),
          ),
        );
}
