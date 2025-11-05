import 'package:all_you_learn/exports.dart';

// ignore: camel_case_types'

// ignore: use_key_in_widget_constructors
class ApiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('API', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        //widget to make the column scrollable
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            TextExplanationObj(
              text:
                  'In this page you will learn about API,\n'
                  'how to make a request to the server\n'
                  'and how to use the data fetched this way.\n'
                  'Also you\'ll learn deeper how to refractor,\n'
                  'use classes, sources and variables.',
              style: kTextIndex,
            ),
            TextExplanationObj(
              text: 'What is an API',
              style: kTextIndex,
              top: 35,
            ), //API
            TextExplanationObj(text: exApiStep0), //step0
            SizedBox(height: 20),
            TextExplanationObj(
              text: 'Example of usage',
              style: kTextIndex,
            ), //step1
            TextExplanationObj(text: exApiStep1), //step1
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step1.png'),
            ), //step1image
            SizedBox(height: 60),
            TextExplanationObj(text: exApiStep2), //step2
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step2.png'),
            ), //step2image
            SizedBox(height: 60),
            TextExplanationObj(text: exApiStep3), //step3
            SizedBox(height: 20),
            TextExplanationObj(text: exApiStep4), //step4
            SizedBox(height: 10),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step4.png'),
            ), //step4image
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step41.png'),
            ), //step41image
            SizedBox(height: 60),
            TextExplanationObj(text: exApiStep5), //step5
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step5.png'),
            ),
            SizedBox(height: 60), //step4image
            TextExplanationObj(text: exApiStep6), //step6
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step6.png'),
            ),
            SizedBox(height: 60),
            TextExplanationObj(text: exApiStep7), //step7
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step07.png'),
            ), //step07
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step7.png'),
            ), //step7
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step71.png'),
            ), //step71
            SizedBox(height: 60),
            TextExplanationObj(text: exApiStep8), //step8
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step8.png'),
            ), //step8
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step81.png'),
            ), //step81
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step82.png'),
            ), //step82
            SizedBox(height: 60),
            TextExplanationObj(text: exApiStep9), //step9
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step9.png'),
            ), //step9
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step92.png'),
            ), //step92
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step91.png'),
            ), //step91
            SizedBox(height: 60),
            TextExplanationObj(text: exApiStep10), //step10
            SizedBox(height: 20),
            InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Image.asset('assets/api/step10.png'),
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
