import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:ml_examples/keys.dart';

final dio = Dio();
String getUrl(String modelName) =>
    "http://max-$modelName.codait-prod-41208c73af8fca213512856c7a09db52-0000.us-east.containers.appdomain.cloud/model/predict";

class ApiService {
  Future<Map<String, dynamic>> fetchResponseFromText(
      String url, String key, dynamic value) async {
    final res = await dio.post(getUrl(url),
        data: {"$key": value},
        options: Options(headers: {
          "content-type": "application/json",
          "accept": "application/json",
        }));
    var d = res.data;

    return d;
  }

  Future<String> qna(String context, String question) async {
    final ans =
        await fetchResponseFromText('question-answering', 'paragraphs', [
      {
        "context": "$context",
        "questions": ["$question"]
      }
    ]);
    return ans['predictions'][0][0];
  }

  Future<String> sentimentClassifier(String query) async {
    final ans = await fetchResponseFromText(
        'text-sentiment-classifier', 'text', ["$query"]);
    return "Positive: ${ans['positive']}\nNegative: ${ans['negative']}";
  }

  Future<Map<String, dynamic>> sendText(String query) async {
    print('query: $query');
    final url = 'https://microsoft-text-analytics1.p.rapidapi.com/sentiment';
    final res = await dio.post(url,
        data: {
          "documents": [
            {"id": "1", "language": "en", "text": "$query"},
          ]
        },
        options: Options(headers: {
          "x-rapidapi-host": "microsoft-text-analytics1.p.rapidapi.com",
          "x-rapidapi-key": RAPID_API_KEY,
          "content-type": "application/json",
          "accept": "application/json",
          "useQueryString": true,
        }));
    var d = res.data['documents'][0];
    return d;
  }

  Future<dynamic> fetchResponseFromImage(File image, String url,
      {bool imgOutput = false}) async {
    Map<String, dynamic> responseData;

    final mimeTypeData =
        lookupMimeType(image.path, headerBytes: [0xFF, 0xD8]).split('/');

    final imageUploadRequest = http.MultipartRequest('POST', Uri.parse(url));

    final file = await http.MultipartFile.fromPath('image', image.path,
        contentType: MediaType(mimeTypeData[0], mimeTypeData[1]));

    imageUploadRequest.fields['ext'] = mimeTypeData[1];
    imageUploadRequest.files.add(file);

    try {
      final streamedResponse = await imageUploadRequest.send();
      final response = await http.Response.fromStream(streamedResponse);

      print('response: ${response.body}');
      if (imgOutput) return response.bodyBytes;
      print('response-data: $responseData');
      responseData = json.decode(response.body);
    } catch (e) {
      print(e);
    }
    return responseData;
  }

  Future<Map<String, dynamic>> imageToCaption(File image) async {
    final response =
        await fetchResponseFromImage(image, getUrl('image-caption-generator'));
    return response;
  }

  Future<Uint8List> styleTransfer(File image, String model) async {
    final bodyBytes = await fetchResponseFromImage(
        image, getUrl('fast-neural-style-transfer') + '?model=$model',
        imgOutput: true);
    return bodyBytes;
  }

  Future<Map<String, dynamic>> ocr(File image) async {
    final response = await fetchResponseFromImage(image, getUrl('ocr'));
    return response;
    /**
     Sample Response:
     {
        "status": "ok",
        "text": [
          [
            "Text from image"
          ]
        ]
      }
     */
  }
}
