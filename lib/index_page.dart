import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:all_you_learn/theme/text_container.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: SizedBox(
          width: 60,
          child: Drawer(
            backgroundColor: Color(0xFF6FD2FF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                DialogButton(
                  color: Color(0xFF6FD2FF),
                  onPressed: () {},
                  child: Container(
                    child: Image.asset('assets/icons/flutter.png'),
                  ),
                ),
                DialogButton(
                  color: Color(0xFF6FD2FF),
                  onPressed: () {
                    Navigator.pushNamed(context, '/python');
                  },
                  child: Container(
                    child: Image.asset('assets/icons/python.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Center(child: Text('FLUTTER', style: kTextTitle)),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Color(0xFF1FBCFD)),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            TextContainer(
              text: 'INDEX',
              onPress: () {},
              style: kTextIndex,
              top: 35.0,
            ), // index
            TextContainer(
              text: '- MaterialApp and Scaffolding',
              icon: Icons.arrow_forward_sharp,
              onPress: () {
                Navigator.pushNamed(context, '/1');
              },
            ), //Scaffoldin and Material app
            TextContainer(
              text: '- Stateless and Stateful widgets',
              icon: Icons.arrow_forward_sharp,
              onPress: () {
                Navigator.pushNamed(context, '/4');
              },
            ), //Stateless and Stateful
            TextContainer(
              text: '- Safe Area',
              icon: Icons.arrow_forward_sharp,
              onPress: () {
                Navigator.pushNamed(context, '/safeArea');
              },
            ), //Safe Area
            TextContainer(
              text: '- Columns and Rows',
              icon: Icons.arrow_forward_sharp,
              onPress: () {
                Navigator.pushNamed(context, '/columns');
              },
            ), //Columns and Rows
            TextContainer(
              text: '- Expanded and Containers',
              icon: Icons.arrow_forward_sharp,
              onPress: () {
                Navigator.pushNamed(context, '/expanded');
              },
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
