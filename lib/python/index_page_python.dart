import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/python/theme/text_container_python.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class IndexPagePython extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: SizedBox(
          width: 60,
          child: Drawer(
            backgroundColor: Color(0xFFFDCB4F),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                DialogButton(
                  color: Color(0xFFFDCB4F),
                  onPressed: () {
                    Navigator.pushNamed(context, '/flutter');
                  },
                  child: Container(
                    child: Image.asset('assets/icons/flutter.png'),
                  ),
                ),
                DialogButton(
                  color: Color(0xFFFDCB4F),
                  onPressed: () {},
                  child: Container(
                    child: Image.asset('assets/icons/python.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Center(child: Text('PYTHON', style: kTextTitle)),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Color(0xFFCDA817)),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            TextContainerPython(
              text: 'INDEX',
              onPress: () {},
              style: kTextIndex,
              top: 35.0,
            ), // index
            TextContainerPython(
              text: '- ',
              onPress: () {},
            ), //Scaffoldin and Material app
            TextContainerPython(
              text: '- ',
              onPress: () {},
            ), //Stateless and Stateful
            TextContainerPython(text: '-', onPress: () {}), //Safe Area
            TextContainerPython(text: '- ', onPress: () {}), //Columns and Rows
            TextContainerPython(
              text: '- ',
              onPress: () {},
            ), //Expanded and Containers
          ],
        ), //colonna dei testi
        bottomNavigationBar: BottomAppBar(
          elevation: 5,
          child: BottomBar(
            icon: Icon(Icons.note_alt, color: Colors.white),
            icon1: Icon(Icons.home, color: Color(0x9291E2FF)),
            icon2: Icon(Icons.question_answer, color: Colors.white),
            onPression2: () {
              Navigator.pushNamed(context, '/quiz');
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
