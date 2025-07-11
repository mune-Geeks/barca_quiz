/// アンサーボタンの定義

import 'package:flutter/material.dart';
import '../font_setting/main_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap; // ボタン処理

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      ),
      child: Text(
        answerText,
        style: MainFonts.answerFont,
        textAlign: TextAlign.center,
      ),
    );
  }
}
