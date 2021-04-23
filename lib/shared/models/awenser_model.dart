import 'dart:convert';

class AwenserModel {
  final String title;
  final bool isRight;

  AwenserModel({required this.title, this.isRight = false});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AwenserModel.fromMap(Map<String, dynamic> map) {
    return AwenserModel(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AwenserModel.fromJson(String source) =>
      AwenserModel.fromMap(json.decode(source));
}
