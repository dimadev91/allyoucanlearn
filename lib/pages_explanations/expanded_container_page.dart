import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/explanations/expanded_containers_explanation.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:all_you_learn/theme/text_explanation_object.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types'

// ignore: use_key_in_widget_constructors
class ExpandedContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('EXPANDED & CONTAINER', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        //widget to make the column scrollable
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            TextExplanationObj(
              text: 'Expanded',
              style: kTextIndex,
              top: 35,
            ), // Title 1
            TextExplanationObj(text: expandedTextual), //Explain 1
            SizedBox(height: 20),
            TextExplanationObj(text: 'Container', style: kTextIndex), //Title 2
            TextExplanationObj(text: containerTextual), //Explain 2
            TextExplanationObj(
              text: 'EXPANDED SYNTAX',
              style: kTextIndex,
              top: 35,
            ), // Title 1
            TextExplanationObj(text: expandedExample), //Explain 1
            SizedBox(height: 20),
            TextExplanationObj(
              text: 'CONTAINER SYNTAX',
              style: kTextIndex,
            ), //Title 2
            TextExplanationObj(text: containerExample), //Explain 2
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
              Navigator.pushNamed(context, '/fluttere');
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
