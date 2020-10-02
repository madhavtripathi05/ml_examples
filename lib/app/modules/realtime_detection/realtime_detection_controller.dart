import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:tflite/tflite.dart';

const String mobilenet = "MobileNet";
const String ssd = "SSD MobileNet";
const String yolo = "Tiny YOLOv2";
const String posenet = "PoseNet";

class RealtimeDetectionController extends GetxController {
  static final to = Get.find<RealtimeDetectionController>();

  List<CameraDescription> cameras;
  String model;
  List<dynamic> recognitions;
  int imageHeight = 0;
  int imageWidth = 0;

  Future loadModel() async {
    String res;
    switch (model) {
      case yolo:
        res = await Tflite.loadModel(
          model: "assets/models/yolov2_tiny.tflite",
          labels: "assets/models/yolov2_tiny.txt",
        );
        break;

      case mobilenet:
        res = await Tflite.loadModel(
            model: "assets/models/mobilenet_v1_1.0_224.tflite",
            labels: "assets/models/mobilenet_v1_1.0_224.txt");
        break;

      case posenet:
        res = await Tflite.loadModel(
            model:
                "assets/models/posenet_mv1_075_float_from_checkpoints.tflite");
        break;

      default:
        res = await Tflite.loadModel(
            model: "assets/models/ssd_mobilenet.tflite",
            labels: "assets/models/ssd_mobilenet.txt");
    }
    print(res);
  }

  setRecognitions(recognitions, imageHeight, imageWidth) {
    recognitions = recognitions;
    imageHeight = imageHeight;
    imageWidth = imageWidth;
    update();
  }

  @override
  void onInit() async {
    cameras = await availableCameras();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
