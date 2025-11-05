import 'package:all_you_learn/pages_explanations/api_page.dart';
import 'package:all_you_learn/pages_explanations/composiotion_page.dart';
import 'package:all_you_learn/pages_explanations/externalization_page.dart';
import 'package:all_you_learn/pages_explanations/map_page.dart';
import 'package:all_you_learn/pages_explanations/other_widgets.dart';
import 'package:all_you_learn/pages_explanations/xml_json_page.dart';

import 'exports.dart';
import 'index_page.dart';
import 'pages_explanations/materialapp_page.dart';
import 'quiz_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final ThemeData kGlobalTheme = kFlutterTheme;
  final ThemeData kLocalTheme = kPythonTheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kGlobalTheme,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/flutter': (context) => IndexPage(),
        '/1': (context) => MaterialApplication(),
        '/2': (context) => Projects(),
        '/3': (context) => MiCardCode(),
        '/4': (context) => StatelessStatefullPage(),
        '/safeArea': (context) => SafeAreaPage(),
        '/columns': (context) => ColumnsRowsPage(),
        '/expanded': (context) => ExpandedContainerPage(),
        '/otherwidgets': (context) => OtherWidgets(),
        '/function': (context) => FunctionPage(),
        '/dice': (context) => DiceRollCode(),
        '/xylophone': (context) => XylophoneCode(),
        '/true': (context) => TrueFalseCode(),
        '/quiz': (context) => QuizPage(),
        '/diagram': (context) => StructureDiagram(),
        '/api': (context) => ApiPage(),
        '/xml': (context) => XmlJsonPage(),
        '/map': (context) => MapPage(),
        '/navigator': (context) => NavigatorPage(),
        '/namedroute': (context) => NamedRoutePage(),
        '/composition': (context) => ComposiotionPage(),
        '/externalize': (context) => ExternalizationPage(),
        '/class': (context) => ClassPage(),
        '/aeip': (context) => AeipPage(),
        '/enum': (context) => EnumsPage(),
        '/list': (context) => ListPage(),
        '/null': (context) => NullOperatorPage(),
        '/ternary': (context) => TernaryOperatorPage(),
        '/functions101': (context) => Functions101Page(),
        '/async': (context) => AsyncPage(),
        '/if': (context) => IfElsePage(),
        '/try': (context) => TryCatchPage(),
        '/python': (context) =>
            Theme(data: kLocalTheme, child: IndexPagePython()),
        '/quiz_python_home': (context) =>
            Theme(data: kLocalTheme, child: QuizHomePython()),
        '/quiz_python': (context) =>
            Theme(data: kLocalTheme, child: QuizPagePython()),
        '/quiz_pythonanalysis': (context) =>
            Theme(data: kLocalTheme, child: QuizPythonAnalysis()),
      },
    );
  }
}
