import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/common/widgets/webview_page.dart';
import 'package:ml_examples/app/modules/ocr/ocr_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/utils/app_utils.dart';

class OcrView extends GetView<OcrController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'OCR',
        leadings: [
          CustomAction(() {
            navigator.pop();
          }, FlutterIcons.back_ant)
        ],
        actions: [
          CustomAction(() {
            Get.offNamed(Routes.HOME);
          }, FlutterIcons.home_ant)
        ],
      ),
      body: GetPlatform.isWeb
          ? Center(
              child: Text(
                'Unsupported in Web please continue in app',
                style: TextStyle(fontSize: 20),
              ),
            )
          : buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(FlutterIcons.info_circle_faw),
        onPressed: () => Get.to(
          WebviewPage(
            url: 'https://github.com/IBM/MAX-OCR', title: 'Image Classification',
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return GetBuilder<OcrController>(builder: (oc) {
      return ListView(physics: BouncingScrollPhysics(), children: [
        SizedBox(height: 50),
        GestureDetector(
          onTap: oc.pickGalleryImage,
          child: Container(
            margin: EdgeInsets.all(18),
            width: Get.width,
            child: oc.pickedImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(
                      oc.pickedImage,
                      fit: BoxFit.fill,
                    ),
                  )
                : Center(
                    child: Text(
                      'Tap here to select an Image',
                      textAlign: TextAlign.center,
                    ),
                  ),
          ),
        ),
        oc.loading || oc.resultText == null
            ? Container(
                height: 50,
                width: 50,
                child: oc.loading
                    ? Center(child: CircularProgressIndicator())
                    : Text(''))
            : Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Predictions',
                    style: kBoldText,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SelectableText(
                      '${oc.resultText}',
                      textAlign: TextAlign.center,
                      style: kBoldTextGreen,
                    ),
                  ),
                ],
              ),
        Container(
          margin: EdgeInsets.all(18),
          padding: EdgeInsets.all(18),
          color: Get.isDarkMode ? Color(0xff222222) : Colors.grey[300],
          child: Text(
            """What Happens when you select an Image?

We send this image to an API(Application Programming Interface) which processes the image and generates the predicted output. 

For more info regarding the model used and other details, click on i button below
""",
            style: kCodeStyle,
          ),
        ),
      ]);
    });
  }
}
