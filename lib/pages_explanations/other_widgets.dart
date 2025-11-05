import 'package:all_you_learn/exports.dart';

class OtherWidgets extends StatelessWidget {
  const OtherWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('OTHERS', style: kTextTitle)),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Color(0xFF1FBCFD)),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              NewExpansionTile(
                text1: 'AudioCache()',
                text2: exAudioCache,
              ), //AudioCache
              NewExpansionTile(text1: 'Card()', text2: exCard), //Card
              NewExpansionTile(
                text1: 'GestureDetector()',
                text2: exGestureDetector,
              ), //GestureDetector
              NewExpansionTile(text1: 'Icon()', text2: exIcon), //Icon
              NewExpansionTile(
                text1: 'ImageAsset()',
                text2: exImageAsset,
              ), //ImageAsset
              NewExpansionTile(
                text1: 'InteractiveViewer()',
                text2: exInteractiveViewer,
                height: 200,
              ),
              NewExpansionTile(
                text1: 'SingleChildScrollView()',
                text2: exSingleChildScrollView,
              ), //SingleChildScrollView
              NewExpansionTile(
                text1: 'TextButton()',
                text2: exTextButton,
              ), //TextButton
              NewExpansionTile(
                text1: 'TextField()',
                text2: exTextField,
                height: 350,
              ), //TextButton
            ],
          ),
        ), //colonna dei testi
        bottomNavigationBar: BottomAppBar(
          elevation: 5,
          child: BottomBar(
            icon: Icon(Icons.note_alt, color: Colors.white),
            icon1: Icon(Icons.home, color: Colors.white),
            icon2: Icon(Icons.question_answer, color: Colors.white),
            onPression2: () {
              Navigator.pushNamed(context, '/quiz');
            },
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
