import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/python/theme/text_container_python_start.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types'

// ignore: use_key_in_widget_constructors
class QuizHomePython extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('QUIZ', style: kTextTitle)),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextContainerPythonCenter(
              text: 'BASIC PYTHON',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              onPress: () {
                Navigator.pushNamed(context, '/quiz_python');
              },
            ),
            TextContainerPythonCenter(
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              text: 'DATA ANALYSIS',
              onPress: () {
                Navigator.pushNamed(context, '/quiz_pythonanalysis');
              },
            ),
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
              Navigator.pushNamed(context, '/python');
            },
            onPression: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ),
      ),
    );
  }
}
