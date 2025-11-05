import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TrueFalseCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('ALL YOU LEARN', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/truefalse/truefalse-1.png'),
                    Image.asset('assets/truefalse/truefalse-2.png'),
                    Image.asset('assets/truefalse/truefalse-3.png'),
                    Image.asset('assets/truefalse/truefalse-4.png'),
                  ],
                ),
              ),
            ), //primo folder
            SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/truefalse/truefalse-6.png'),
                    Image.asset('assets/truefalse/truefalse-7.png'),
                  ],
                ),
              ),
            ), //secondo folder
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Image.asset('assets/truefalse/truefalse-5.png')],
                ),
              ),
            ), //terzo folder
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
