import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:ml_examples/app/utils/app_utils.dart';

List<Widget> renderBoxes(
    {double screenHeight,
    double screenWidth,
    double imageHeight,
    double imageWidth,
    List<dynamic> recognitions}) {
  if (recognitions == null) return [];
  if (imageHeight == null || imageWidth == null) return [];

  double X = screenWidth;
  double Y = imageHeight / imageWidth * screenWidth;
  Color color = primaryColor;
  return recognitions.map((re) {
    return Positioned(
      left: re["rect"]["x"] * X,
      top: re["rect"]["y"] * Y,
      width: re["rect"]["w"] * X,
      height: re["rect"]["h"] * Y,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
          border: Border.all(
            color: color,
            width: 2,
          ),
        ),
        child: Text(
          "${re["detectedClass"]} ${(re["confidenceInClass"] * 100).toStringAsFixed(0)}%",
          style: TextStyle(
            background: Paint()..color = color,
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }).toList();
}

List<Widget> renderKeypoints(
    {double screenHeight,
    double screenWidth,
    double imageHeight,
    double imageWidth,
    List<dynamic> recognitions}) {
  if (recognitions == null) return [];
  if (imageHeight == null || imageWidth == null) return [];

  double X = screenWidth;
  double Y = imageHeight / imageWidth * screenWidth;

  var lists = <Widget>[];
  recognitions.forEach((re) {
    var color = primaryColor;
    var list = re["keypoints"].values.map<Widget>((k) {
      return Positioned(
        left: k["x"] * X - 6,
        top: k["y"] * Y - 6,
        width: 100,
        height: 20,
        child: Text(
          "● ${k["part"]}",
          style: TextStyle(
            color: color,
            fontSize: 6.0,
          ),
        ),
      );
    }).toList();

    lists..addAll(list);
  });

  return lists;
}

Map<String, double> getHeightWidth(File image) {
  var res = <String, double>{};
  FileImage(image)
      .resolve(ImageConfiguration())
      .addListener(ImageStreamListener((ImageInfo info, bool _) {
    res = {
      'height': info.image.height.toDouble(),
      'width': info.image.width.toDouble(),
    };
    print(res);
  }));
  return res;
}

Uint8List imageToByteListFloat32(
    img.Image image, int inputSize, double mean, double std) {
  var convertedBytes = Float32List(1 * inputSize * inputSize * 3);
  var buffer = Float32List.view(convertedBytes.buffer);
  int pixelIndex = 0;
  for (var i = 0; i < inputSize; i++) {
    for (var j = 0; j < inputSize; j++) {
      var pixel = image.getPixel(j, i);
      buffer[pixelIndex++] = (img.getRed(pixel) - mean) / std;
      buffer[pixelIndex++] = (img.getGreen(pixel) - mean) / std;
      buffer[pixelIndex++] = (img.getBlue(pixel) - mean) / std;
    }
  }
  return convertedBytes.buffer.asUint8List();
}

Uint8List imageToByteListUint8(img.Image image, int inputSize) {
  var convertedBytes = Uint8List(1 * inputSize * inputSize * 3);
  var buffer = Uint8List.view(convertedBytes.buffer);
  int pixelIndex = 0;
  for (var i = 0; i < inputSize; i++) {
    for (var j = 0; j < inputSize; j++) {
      var pixel = image.getPixel(j, i);
      buffer[pixelIndex++] = img.getRed(pixel);
      buffer[pixelIndex++] = img.getGreen(pixel);
      buffer[pixelIndex++] = img.getBlue(pixel);
    }
  }
  return convertedBytes.buffer.asUint8List();
}
