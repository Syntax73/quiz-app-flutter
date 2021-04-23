import 'dart:convert';

import 'package:DevQuiz/shared/models/awenser_model.dart';

class QuestionModel {
  final String title;
  final List<AwenserModel> awenser;

  QuestionModel({required this.title, required this.awenser})
      : assert(awenser.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awenser': awenser.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      awenser: List<AwenserModel>.from(
          map['awenser']?.map((x) => AwenserModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source));
}
