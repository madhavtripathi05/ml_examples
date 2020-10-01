import 'package:get/get.dart';

class GetStartedController extends GetxController {
  //TODO: Implement GetStartedController
  
  final count = 0.obs;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  increment() => count.value++;
}
