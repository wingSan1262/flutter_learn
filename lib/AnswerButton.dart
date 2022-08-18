import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  String answerText = "";
  void Function(String answer) clickCallback = (answer)=>{};

  AnswerButton({
    this.answerText = "question not sett",
    required this.clickCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: ElevatedButton(
        onPressed: (){clickCallback(answerText);},
        child: Text(answerText),
      ) ,
    );
  }

}