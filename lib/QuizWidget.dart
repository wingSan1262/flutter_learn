 import 'package:flutter/cupertino.dart';

import 'AnswerButton.dart';
import 'Question.dart';

class QuizWidget extends StatelessWidget{

  String questionText = "";
  List<String> questionList = [];
  void Function(String answer) onUserAnswer = (answer)=>{};

  QuizWidget({
    required this.questionText, required this.questionList, required this.onUserAnswer
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Question(
          questionText: questionText,
        ),
        ...questionList.map(
                (answer){ return AnswerButton(
              answerText: answer,
              clickCallback: (String value){
                onUserAnswer(answer);
              },
            );}
        ).toList()
      ],
    ),
    );
  }


}