import 'package:all_you_learn/explanations/xml_json.dart';
import 'package:all_you_learn/exports.dart';

// ignore: camel_case_types'

// ignore: use_key_in_widget_constructors
class XmlJsonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('XML and JSON', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        //widget to make the column scrollable
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            TextExplanationObj(
              text: 'XML or JSON',
              style: kTextIndex,
              top: 35,
            ), //XML
            TextExplanationObj(text: exXmlJson), //exXml
            SizedBox(height: 20),
            TextExplanationObj(text: 'XML', style: kTextIndex, top: 35), //XML
            TextExplanationObj(text: exXml), //exXml
            SizedBox(height: 50),
            TextExplanationObj(text: 'JSON', style: kTextIndex), //step1
            TextExplanationObj(text: exJson), //exJson
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
