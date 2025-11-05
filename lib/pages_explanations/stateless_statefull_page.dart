import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/explanations/stless_stful_explanation.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:all_you_learn/theme/text_explanation_object.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types'

// ignore: use_key_in_widget_constructors
class StatelessStatefullPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('STLESS & STFUL', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        //widget to make the column scrollable
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            TextExplanationObj(
              text: 'Stateless widget',
              style: kTextIndex,
              top: 35,
            ), // Title 1
            TextExplanationObj(text: explainStateless), //Explain 1
            SizedBox(height: 20),
            TextExplanationObj(
              text: 'Stateful widget',
              style: kTextIndex,
            ), //Title 2
            TextExplanationObj(text: explainStateful), //Explain 2
            SizedBox(height: 20),
            TextExplanationObj(text: 'USAGE', style: kTextIndex), //Title 3
            TextExplanationObj(text: explainUsage), //Explain 3
            SizedBox(height: 20),
            TextExplanationObj(text: 'SYNTAX', style: kTextIndex), //Title 4
            TextExplanationObj(text: statelessExample), //Explain 4
            SizedBox(height: 20),
            TextExplanationObj(text: statefulExample), //Explain 5
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: Center(
          child: BottomBar(
            icon: Icon(Icons.note_alt, color: Colors.white),
            icon1: Icon(Icons.home, color: Colors.white),
            onPression1: () {
              Navigator.pushNamed(context, '/flutter');
            },
            onPression: () {
              Navigator.pushNamed(context, '/2');
            },
          ),
        ),
      ),
    );
  }
}
