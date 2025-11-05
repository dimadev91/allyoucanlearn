// ignore_for_file: use_key_in_widget_constructors

import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:flutter/material.dart';

class XylophoneCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('ALL YOU LEARN', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/xylophone/xylophone-1.png'),
            Image.asset('assets/xylophone/xylophone-2.png'),
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
              Navigator.pushNamed(context, '/');
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
