import 'package:barca_quiz/font_setting/main_fonts.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Barcelona Quiz',
            style: MainFonts.headline1,
          ),
          const SizedBox(height: 40),
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/barcelona_emblem',
              width: 200,
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 246, 239, 239),
              backgroundColor: const Color.fromARGB(255, 157, 7, 7),
            ),
            label: Text(
              'Start',
              style: MainFonts.headline2,
            ),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
