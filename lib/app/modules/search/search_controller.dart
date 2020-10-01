import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  //TODO: Implement SearchController

  final searchController = TextEditingController();
  RxList<dynamic> items = [].obs;
  RxSet<dynamic> searchItems = <dynamic>{}.obs;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  search(String p) {
    final tempList = items.map((e) => e).toList();
    searchItems.addAll(tempList);

    searchItems
        .retainWhere((e) => e.title.toLowerCase().contains(p.toLowerCase()));

    //print(searchProducts.length);
  }
}
