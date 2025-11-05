import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/explanations/explanations.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:all_you_learn/theme/text_explanation_object.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types'

// ignore: use_key_in_widget_constructors
class MaterialApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('MATERIAL APP', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        //widget to make the column scrollable
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            TextExplanationObj(
              text: 'What is Material App?',
              style: kTextIndex,
              top: 35,
            ), //Question what is material app
            TextExplanationObj(text: explainMaterial), //Explain material app
            SizedBox(height: 20),
            TextExplanationObj(
              text: 'What is Scaffold?',
              style: kTextIndex,
            ), //Question what is scaffold
            TextExplanationObj(text: explainMaterial1), //Explain scaffold
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/materialapp/materialapp.png'),
            ), //code example
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
