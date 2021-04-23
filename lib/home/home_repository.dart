import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = rootBundle.loadString("/database/user.json");
  }

  Future<QuizModel> getQuizzes() async {}
}
