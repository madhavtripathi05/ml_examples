import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/modules/qna/qna_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/utils/app_utils.dart';

class QnaView extends GetView<QnaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          'QnA using Context',
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
        body: buildBody());
  }

  Widget buildBody() {
    return GetBuilder<QnaController>(builder: (qc) {
      return ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Context:',
                style: kBoldText,
                textAlign: TextAlign.center,
              ),
              Container(
                height: 150,
                margin: EdgeInsets.all(18),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Text(qc.randomContext),
                ),
              ),
              FlatButton(
                textColor: primaryColor,
                child: Text(
                  'Random',
                  textAlign: TextAlign.center,
                ),
                onPressed: qc.changeContext,
              ),
            ],
          ),
          Text('Ask any question regarding above paragraph',
              textAlign: TextAlign.center),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              controller: qc.questionController,
            ),
          ),
          Column(children: [
            qc.loading
                ? CircularProgressIndicator()
                : FlatButton(
                    child: Text('Submit'),
                    onPressed: qc.fetchAnswers,
                    color: primaryColor,
                    textColor: Colors.white,
                  ),
          ]),
          qc.resultText != null
              ? Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text('Predicted Answer:',
                          style: kBoldText, textAlign: TextAlign.center),
                      Text(
                        '${qc.resultText}',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                )
              : Text(''),
        ],
      );
    });
  }
}
