import 'package:all_you_learn/home.dart';
import 'package:all_you_learn/pages_explanations/columns_rows_page.dart';
import 'package:all_you_learn/pages_explanations/expanded_container_page.dart';
import 'package:all_you_learn/pages_explanations/safe_area_page.dart';
import 'package:all_you_learn/pages_explanations/stateless_statefull_page.dart';
import 'package:all_you_learn/projects.dart';
import 'package:all_you_learn/projects/dice_roll_code.dart';
import 'package:all_you_learn/projects/mi_card_code.dart';
import 'package:all_you_learn/projects/true_false_code.dart';
import 'package:all_you_learn/projects/xylophone_code.dart';
import 'package:all_you_learn/python/index_page_python.dart';
import 'package:all_you_learn/theme/theme_file.dart';
import 'package:flutter/material.dart';

import 'index_page.dart';
import 'pages_explanations/materialapp_page.dart';
import 'quiz_page.dart';

void main() {
  runApp(MyApp());
}

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
        '/dice': (context) => DiceRollCode(),
        '/xylophone': (context) => XylophoneCode(),
        '/true': (context) => TrueFalseCode(),
        '/quiz': (context) => QuizPage(),
        '/python': (context) =>
            Theme(data: kLocalTheme, child: IndexPagePython()),
      },
    );
  }
}
