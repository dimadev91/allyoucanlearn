// ignore_for_file: unused_field

import 'exports.dart';

class TileData {
  final String title;
  final List<ChildData> children;

  TileData({required this.title, required this.children});
}

class ChildData {
  final BuildContext contextNav;
  final String text;
  final void Function() onPressed;
  final String navigatorKey;

  ChildData({
    required this.text,
    required this.onPressed,
    required this.navigatorKey,
    required this.contextNav,
  });
}

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  String _searchText = '';

  late final List<TileData> tiles;

  @override
  void initState() {
    super.initState();

    tiles = [
      TileData(title: "UI AND LOGIC", children: []),
      TileData(
        title: "App's structure fundamentals",
        children: [
          ChildData(
            text: "- MaterialApp and Scaffolding",
            onPressed: () => Navigator.pushNamed(context, '/1'),
            contextNav: context,
            navigatorKey: '/1',
          ),
          ChildData(
            text: "- Widgets: Stateless and Stateful",
            onPressed: () => Navigator.pushNamed(context, '/4'),
            contextNav: context,
            navigatorKey: '/4',
          ),
          ChildData(
            text: "- SafeArea",
            onPressed: () => Navigator.pushNamed(context, '/safeArea'),
            contextNav: context,
            navigatorKey: '/safeArea',
          ),
          ChildData(
            text: "- Columns and Rows",
            onPressed: () => Navigator.pushNamed(context, '/columns'),
            contextNav: context,
            navigatorKey: '/columns',
          ),
          ChildData(
            text: "- Expanded and Containers",
            onPressed: () => Navigator.pushNamed(context, '/expanded'),
            contextNav: context,
            navigatorKey: '/expanded',
          ),
          ChildData(
            text: "- Other widgets",
            onPressed: () => Navigator.pushNamed(context, '/otherwidgets'),
            contextNav: context,
            navigatorKey: '/otherwidgets',
          ),
          ChildData(
            text: "- Diagram",
            onPressed: () => Navigator.pushNamed(context, '/diagram'),
            contextNav: context,
            navigatorKey: '/diagram',
          ),
        ],
      ),
      TileData(
        title: "Functions and methods",
        children: [
          ChildData(
            text: "- Functions 101",
            onPressed: () => Navigator.pushNamed(context, '/functions101'),
            contextNav: context,
            navigatorKey: '/functions101',
          ),
          ChildData(
            text: "- Async",
            onPressed: () => Navigator.pushNamed(context, '/async'),
            contextNav: context,
            navigatorKey: '/async',
          ),
        ],
      ),
      TileData(
        title: "Creating a class",
        children: [
          ChildData(
            text: "- Properties and Constructors",
            onPressed: () => Navigator.pushNamed(context, '/class'),
            contextNav: context,
            navigatorKey: '/class',
          ),
          ChildData(
            text: "- AEIP",
            onPressed: () => Navigator.pushNamed(context, '/aeip'),
            contextNav: context,
            navigatorKey: '/aeip',
          ),
        ],
      ),
      TileData(
        title: "Operators",
        children: [
          ChildData(
            text: "- Null operator",
            onPressed: () => Navigator.pushNamed(context, '/null'),
            contextNav: context,
            navigatorKey: '/null',
          ),
          ChildData(
            text: "- Ternary operator",
            onPressed: () => Navigator.pushNamed(context, '/ternary'),
            contextNav: context,
            navigatorKey: '/ternary',
          ),
        ],
      ),
      TileData(
        title: "List, enums and maps",
        children: [
          ChildData(
            text: "- List",
            onPressed: () => Navigator.pushNamed(context, '/list'),
            contextNav: context,
            navigatorKey: '/list',
          ),
          ChildData(
            text: "- Enums",
            onPressed: () => Navigator.pushNamed(context, '/enum'),
            contextNav: context,
            navigatorKey: '/enum',
          ),
          ChildData(
            text: "- Maps",
            onPressed: () => Navigator.pushNamed(context, '/map'),
            contextNav: context,
            navigatorKey: '/map',
          ),
        ],
      ),
      TileData(
        title: "Flow control",
        children: [
          ChildData(
            text: "- if, else, else if",
            onPressed: () => Navigator.pushNamed(context, '/if'),
            contextNav: context,
            navigatorKey: '/if',
          ),
          ChildData(
            text: "- try, catch, throw",
            onPressed: () => Navigator.pushNamed(context, '/try'),
            contextNav: context,
            navigatorKey: '/try',
          ),
        ],
      ),
      TileData(
        title: "API",
        children: [
          ChildData(
            text: "- How to use an API",
            onPressed: () => Navigator.pushNamed(context, '/api'),
            contextNav: context,
            navigatorKey: '/api',
          ),
          ChildData(
            text: "- Xml and Json",
            onPressed: () => Navigator.pushNamed(context, '/xml'),
            contextNav: context,
            navigatorKey: '/xml',
          ),
        ],
      ),
      TileData(
        title: "Navigation",
        children: [
          ChildData(
            text: "- How to push and pop",
            onPressed: () => Navigator.pushNamed(context, '/navigator'),
            contextNav: context,
            navigatorKey: '/navigator',
          ),
          ChildData(
            text: "- Named routes",
            onPressed: () => Navigator.pushNamed(context, '/namedroute'),
            contextNav: context,
            navigatorKey: '/namedroute',
          ),
        ],
      ),
      TileData(
        title: "Refractor",
        children: [
          ChildData(
            text: "- Widget composition",
            onPressed: () => Navigator.pushNamed(context, '/composition'),
            contextNav: context,
            navigatorKey: '/composition',
          ),
          ChildData(
            text: "- Externalize functions",
            onPressed: () => Navigator.pushNamed(context, '/externalize'),
            contextNav: context,
            navigatorKey: '/externalize',
          ),
        ],
      ),
      TileData(title: "FLAME", children: []),
      TileData(
        title: "Game's structure fundamentals",
        children: [
          ChildData(
            text: "- FlameGame",
            onPressed: () => Navigator.pushNamed(context, '/'),
            contextNav: context,
            navigatorKey: '/',
          ),
          ChildData(
            text: "- Components",
            onPressed: () => Navigator.pushNamed(context, '/'),
            contextNav: context,
            navigatorKey: '/',
          ),
          ChildData(
            text: "- PlayArea",
            onPressed: () => Navigator.pushNamed(context, '/'),
            contextNav: context,
            navigatorKey: '/',
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final widgetsToShow = buildIndexWidgets(
      tiles: tiles,
      searchText: _searchText,
    );

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
                  child: Image.asset('assets/icons/flutter.png'),
                ),
                DialogButton(
                  color: Color(0xFF6FD2FF),
                  onPressed: () {
                    Navigator.pushNamed(context, '/python');
                  },
                  child: Image.asset('assets/icons/python.png'),
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
            TextField(
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search a topic',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [SizedBox(height: 20), ...widgetsToShow],
                ),
              ),
            ),
          ],
        ),
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
