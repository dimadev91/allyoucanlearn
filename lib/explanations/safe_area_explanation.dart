const String safeAreaExample =
    'class MySafeAreaWidget extends StatelessWidget {\n'
    '  @override\n'
    '  Widget build(BuildContext context) {\n'
    '    return SafeArea(\n'
    '      child: Scaffold(\n'
    '        body: Center(\n'
    '          child: Text("This text is inside a SafeArea"),\n'
    '        ),\n'
    '      ),\n'
    '    );\n'
    '  }\n'
    '}';
const String safeAreaTextual =
    'SafeArea is a widget in Flutter that ensures its child is displayed within the\n'
    'visible and non-obstructed area of the screen. It automatically adds padding\n'
    'to avoid areas such as the status bar, notches, or system navigation bars.\n\n'
    'Using SafeArea helps make your app look consistent across different devices\n'
    'and screen sizes, preventing important content from being hidden or cut off.\n\n'
    'Typically, SafeArea wraps around the main content of a screen, like a Scaffold\n'
    'or a column of widgets, so that all its child widgets respect the safe display\n'
    'boundaries without manual padding adjustments.';
