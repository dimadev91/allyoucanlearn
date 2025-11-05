// ignore_for_file: use_key_in_widget_constructors

import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/explanations/columns_rows_explanation.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:all_you_learn/theme/text_explanation_object.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types'

class ColumnsRowsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('COLUMN & ROW', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        //widget to make the column scrollable
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            TextExplanationObj(
              text: 'Columns',
              style: kTextIndex,
              top: 35,
            ), // Title 1
            TextExplanationObj(text: columnTextual), //Explain 1
            SizedBox(height: 20),
            TextExplanationObj(text: 'Rows', style: kTextIndex), //Title 2
            TextExplanationObj(text: rowTextual), //Explain 2
            SizedBox(height: 20),
            TextExplanationObj(
              text: 'COLUMN SYNTAX',
              style: kTextIndex,
            ), //Title 2
            TextExplanationObj(text: columnExample),
            SizedBox(height: 20),
            TextExplanationObj(text: 'ROW SYNTAX', style: kTextIndex), //Title 2
            TextExplanationObj(text: rowExample), //Explain 2
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
