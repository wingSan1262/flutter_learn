 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AnswerButton.dart';
import 'Question.dart';

class AnnouncementWidget extends StatelessWidget{

  String announcemenText = "";
  void Function( ) onAnnouncement = ()=>{};

  AnnouncementWidget({
    required this.announcemenText,
    required this.onAnnouncement
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: GestureDetector(
          onTap:() {onAnnouncement();},
          child: Text(
              announcemenText,
              style: TextStyle(
                fontSize: 30,
              ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );

  }


}