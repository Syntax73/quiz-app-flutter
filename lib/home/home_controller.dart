import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awenser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.laoding;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
        name: "Sandro",
        photoUrl: "https://avatars.githubusercontent.com/u/45923733?v=4");
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.laoding;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        imagem: AppImages.blocks,
        level: Level.facil,
        questionsAwensered: 1,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter?",
            awenser: [
              AwenserModel(title: "Estou curtindo", isRight: true),
              AwenserModel(title: "Amando o Flutter"),
              AwenserModel(title: "Muito top"),
              AwenserModel(title: "Horrivel kkk"),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter?",
            awenser: [
              AwenserModel(title: "Estou curtindo", isRight: true),
              AwenserModel(title: "Amando o Flutter"),
              AwenserModel(title: "Muito top"),
              AwenserModel(title: "Horrivel kkk"),
            ],
          )
        ],
      )
    ];
    state = HomeState.success;
  }
}
