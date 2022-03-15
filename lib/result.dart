import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent !';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable !';
    } else if (resultScore <= 16) {
      resultText = 'You are ...Strange!?';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  const Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
