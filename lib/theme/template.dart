import 'package:all_you_learn/constants/constants.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';

// ignore: camel_case_types'

// ignore: use_key_in_widget_constructors
class MaterialApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('ALL YOU LEARN', style: kTextTitle)),
      ),
      body: SingleChildScrollView(),
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
