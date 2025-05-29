import 'package:barca_quiz/quiz_main/quiz.dart';
import 'package:flutter/material.dart';

class QuizMain extends StatelessWidget {
  const QuizMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Quiz(),
      ),
    );
  }
}
