// To parse this JSON data, do
//
//     final categoryItem = categoryItemFromJson(jsonString);

import 'dart:convert';

class CategoryItem {
  CategoryItem({
    this.title,
    this.description,
    this.example,
    this.code,
    this.images,
  });

  String title;
  String description;
  String example;
  String code;
  List<String> images;

  factory CategoryItem.fromRawJson(String str) =>
      CategoryItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryItem.fromJson(Map<String, dynamic> json) => CategoryItem(
        title: json["title"],
        description: json["description"],
        example: json["example"],
        code: json["code"],
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "example": example,
        "code": code,
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
