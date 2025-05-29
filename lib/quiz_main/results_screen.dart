import 'package:flutter/material.dart';

import '../font_setting/main_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 500,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // メイン軸に沿って子要素をどう調整するのか
          children: [
            Text(
              'You answered X out of Y questions correctly!',
              style: MainFonts.headline2,
            ),
            const SizedBox(height: 30,),
            const Text('List of answers and questions,,,'),
            const SizedBox(height: 30,),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!'),),
          ],
        ),
      ),
    );
  }
}
