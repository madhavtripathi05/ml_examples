import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/common/extensions/hover_extension.dart';
import 'package:ml_examples/app/common/widgets/webview_page.dart';
import 'package:ml_examples/app/modules/sentiment_analysis/sentiment_analysis_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/utils/app_utils.dart';

class SentimentAnalysisView extends GetView<SentimentAnalysisController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      return Scaffold(
        appBar: CustomAppBar(
          'Sentiment Analysis',
          leadings: [
            CustomAction(() {
              navigator.pop();
            }, FlutterIcons.back_ant)
                .moveUpOnHover
          ],
          actions: [
            CustomAction(() {
              Get.offNamed(Routes.HOME);
            }, FlutterIcons.home_ant)
                .moveUpOnHover
          ],
        ),
        body: buildBody(),
        floatingActionButton: FloatingActionButton(
          child: Icon(FlutterIcons.info_circle_faw),
          onPressed: () => Get.to(
            WebviewPage(
              url: 'https://github.com/IBM/MAX-Text-Sentiment-Classifier',
              title: 'Sentiment Analysis',
            ),
          ),
        ),
      );
    });
  }

  Widget buildBody() {
    return GetBuilder<SentimentAnalysisController>(builder: (sc) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Enter a sentence to continue',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 18.0,
                horizontal: Get.width > 500 ? Get.width * 0.3 : 28),
            child: TextField(
              controller: sc.queryController,
            ),
          ),
          sc.isLoading
              ? CircularProgressIndicator()
              : FlatButton(
                  onPressed: sc.fetchData,
                  color: primaryColor,
                  textColor: Colors.white,
                  child: Text('Submit'),
                ),
          sc.data != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    '${sc.data}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: (sc.results['sentiment'] == 'negative')
                            ? Colors.red
                            : (sc.results['sentiment'] == 'positive')
                                ? Colors.green
                                : Colors.blue),
                  ),
                )
              : Container(),
          Container(
            margin: EdgeInsets.all(18),
            padding: EdgeInsets.all(18),
            color: Get.isDarkMode ? Color(0xff222222) : Colors.grey[300],
            child: Text(
              """What Happens when you Enter the Text?

We send this Text to an API(Application Programming Interface) which processes the same and generates the predicted output. 

For more info regarding the model used and other details, click on i button below
""",
              style: kCodeStyle,
            ),
          ),
        ],
      );
    });
  }
}
