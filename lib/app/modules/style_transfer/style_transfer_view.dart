import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/modules/style_transfer/style_transfer_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/utils/app_utils.dart';

class StyleTransferView extends GetView<StyleTransferController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Style Transfer',
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
                'Unsupported operation please use App',
                style: TextStyle(fontSize: 20),
              ),
            )
          : buildBody(),
    );
  }

  Widget buildBody() {
    return GetBuilder<StyleTransferController>(builder: (sc) {
      return ListView(physics: BouncingScrollPhysics(), children: [
        GestureDetector(
          onTap: sc.pickGalleryImage,
          child: Center(
            child: Container(
              margin: EdgeInsets.all(18),
              width: Get.width,
              child: sc.pickedImage != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        sc.pickedImage,
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
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
              'Try to upload images with less resolution for faster results'),
        ),
        sc.loading
            ? Container(
                height: 50,
                width: 50,
                child: sc.loading
                    ? Center(child: CircularProgressIndicator())
                    : Text(''))
            : Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    sc.base64image != null
                        ? 'Normal Image Converted to ${sc.selected}'
                        : 'Convert your image to ${sc.selected}',
                    style: sc.base64image != null ? kBoldTextGreen : kBoldText,
                  ),
                  SizedBox(height: 10),
                ],
              ),
        sc.base64image != null
            ? Center(
                child: Container(
                  margin: EdgeInsets.all(18),
                  width: Get.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.memory(
                      sc.base64image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
            : Text(''),
        Container(
          margin:
              EdgeInsets.symmetric(vertical: 20, horizontal: Get.width * 0.3),
          child: Center(
            child: DropdownButton<String>(
              underline: Container(),
              icon: Icon(FlutterIcons.arrow_down_drop_circle_mco),
              value: sc.selected,
              items: <String>['mosaic', 'candy', 'rain_princess', 'udnie']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: sc.onSelected,
            ),
          ),
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
