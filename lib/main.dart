

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/AnswerButton.dart';
import 'package:test_project/Question.dart';
import 'package:test_project/QuizWidget.dart';

import 'AnnouncementWidget.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QuestionScreen();
  }
}

class QuestionScreen extends State<MyApp>{

  void onUserAnswer(String answer){
    if(answer == questions[questionIndex]['correctAnswer'])
      correctAnswer = correctAnswer + 1;
    setState(() {
          questionIndex = questionIndex + 1;
    });
  }

  onReset(){
    setState(() {
      correctAnswer = 0;
      questionIndex = 0;
    });
  }

  var correctAnswer = 0;
  var questionIndex = 0;

  var questions = [
    {
      'questionText': "color?",
      'answer': ['black', 'green', 'white' ],
      'correctAnswer': 'black'
    },
    {
      'questionText': "color2?",
      'answer': ['black', 'asas', 'white', 'geysasasss'],
      'correctAnswer': 'black'
    },
    {
      'questionText': "color3?",
      'answer': ['black', 'sab', 'white', 'geysss','asas', 'white'],
      'correctAnswer': 'black'
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App Brooo'),
        ),
        body:
        questionIndex < questions.length ? QuizWidget(
          questionText: questions[questionIndex]['questionText'].toString(),
          questionList: questions[questionIndex]['answer'] as List<String>,
          onUserAnswer: (answer){
            onUserAnswer(answer);
          },
        ) : AnnouncementWidget(
          announcemenText: "Nice you finish this quiz, tap here to continue \n"
              "Your correct answer is ${
              ((correctAnswer.toDouble()/3) * 100).toInt()
          }",
           onAnnouncement:  (){onReset();}
        ),
      )
    );
  }

}