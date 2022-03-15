import 'package:flutter/material.dart';
import 'package:flutter_application_2/answer.dart';
import 'package:flutter_application_2/question.dart';
import 'package:flutter_application_2/result.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var questions = const [
    {
      'questionText': 'What \'s your favourit color?',
      'answer': [
        {'text': 'red', 'score': 10},
        {'text': 'yellow', 'score': 7},
        {'text': 'green', 'score': 3},
        {'text': 'blue', 'score': 1},
      ],
    },
    {
      'questionText': 'What \'s your favourit animal?',
      'answer': [
        {'text': 'lion', 'score': 10},
        {'text': 'elephant', 'score': 7},
        {'text': 'giraff', 'score': 3},
        {'text': 'snake', 'score': 1},
      ],
    },
    {
      'questionText': 'What \'s your favourit manager?',
      'answer': [
        {'text': 'ahmed', 'score': 10},
        {'text': 'max', 'score': 7},
        {'text': 'mahmoud', 'score': 3},
        {'text': 'mai', 'score': 1},
      ],
    }
  ];
  var index = 0;
  var _totalScore = 0;

  void changeIndex(int score) {
    _totalScore += score;
    if (index < questions.length) {
      setState(() {
        index++;
      });
    }
  }

  void restartQuiz() {
    setState(() {
      index = 0;
      _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: index < questions.length
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Quetsion(questions[index]['questionText'] as String),
                    ...(questions[index]['answer']
                            as List<Map<String, dynamic>>)
                        .map((answer) {
                      return Answer(
                        answer['text'] as String,
                        () => changeIndex(answer['score']),
                      );
                    }).toList()
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Result(_totalScore),
                  TextButton(
                    onPressed: restartQuiz,
                    child: const Text(
                      'Restart Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ));
  }
}
