import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget{
  String questionText = "";

  Question({this.questionText = "question not sett"});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0, top: 8.0),
      child: Text(
          questionText,
          style: TextStyle(
            fontSize: 30,
          ),
      ),
    );
  }
}