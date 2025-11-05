import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:all_you_learn/theme/text_explanation_object.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types'

// ignore: use_key_in_widget_constructors
class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('PROJECTS', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextExplanationObj(
              text: 'CODES',
              style: kTextIndex,
              top: 35,
            ), //title projects
            TextExplanationObj(
              text: 'Mi card',
              style: kPagesStyle,
              onPress: () {
                Navigator.pushNamed(context, '/3');
              },
            ), //micard
            TextExplanationObj(
              text: 'Dice roll',
              style: kPagesStyle,
              onPress: () {
                Navigator.pushNamed(context, '/dice');
              },
            ), //dice
            TextExplanationObj(
              text: 'Xylophone',
              style: kPagesStyle,
              onPress: () {
                Navigator.pushNamed(context, '/xylophone');
              },
            ),
            TextExplanationObj(
              text: 'True&False',
              style: kPagesStyle,
              onPress: () {
                Navigator.pushNamed(context, '/true');
              },
            ), //truefalse
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: Center(
          child: BottomBar(
            icon: Icon(Icons.note_alt, color: Color(0x9291E2FF)),
            icon1: Icon(Icons.home, color: Colors.white),
            icon2: Icon(Icons.question_answer, color: Colors.white),
            onPression2: () {
              Navigator.pushNamed(context, '/quiz');
            },
            onPression1: () {
              Navigator.pushNamed(context, '/flutter');
            },
          ),
        ),
      ),
    );
  }
}
