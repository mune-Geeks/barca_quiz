import 'package:barca_quiz/data/questions.dart';
import 'package:barca_quiz/quiz_main/questions_screen.dart';
import 'package:barca_quiz/quiz_main/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  // コンストラクタ
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];


  var activeScreen = 'start-screen';
  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length){
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 72, 16, 25),
            Color.fromARGB(255, 19, 17, 38),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: screenWidget,
    );
  }
}
