import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: Column(
            children: [
              const Text('The Question'),
              RaisedButton(
                onPressed: answerQuestion,
                child: const Text('Answer 1'),
              ),
              RaisedButton(
                onPressed: () => print('Answer 2 chosen'),
                child: const Text('Answer 2'),
              ),
              RaisedButton(
                onPressed: () => print('Answer 3 chosen'),
                child: const Text('Answer 3'),
              ),
            ],
          )),
    );
  }
}
