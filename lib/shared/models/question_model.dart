import 'package:DevQuiz/shared/models/awenser_model.dart';

class QuestionModel {
  final String title;
  final List<AwenserModel> awenser;

  QuestionModel({required this.title, required this.awenser})
      : assert(awenser.length == 4);
}
