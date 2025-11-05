import 'package:all_you_learn/exports.dart';
// ignore_for_file: use_key_in_widget_constructors

class StructureDiagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('DIAGRAM', style: kTextTitle)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: InteractiveViewer(
            panEnabled: true,
            minScale: 0.3,
            maxScale: 3,
            child: Image.asset('assets/diagram.png', scale: 1),
          ),
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
