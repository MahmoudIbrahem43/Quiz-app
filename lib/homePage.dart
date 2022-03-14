import 'package:flutter/material.dart';
import 'package:flutter_application_2/answer.dart';
import 'package:flutter_application_2/question.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var questions = const [
    {
      'questionText': 'What \'s your favourit color?',
      'answer': ['red', 'green', 'yellow', 'black'],
    },
    {
      'questionText': 'What \'s your favourit animal?',
      'answer': ['lion', 'elephant', 'giraff', 'snake'],
    },
    {
      'questionText': 'What \'s your favourit manager?',
      'answer': ['ahmed', 'mai', 'fady', 'haidy'],
    }
  ];
  var index = 0;

  void changeIndex() {
    if (index < questions.length) {
      setState(() {
        index++;
      });
    }
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
                  Quetsion('${questions[index]['questionText']}'),
                  ...(questions[index]['answer'] as List<String>).map((answer) {
                    return Answer(answer, changeIndex);
                  }).toList()
                ],
              ),
            )
          : Center(
              child: ElevatedButton(
                child: const Text('Play again'),
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
              ),
            ),
    );
  }
}
