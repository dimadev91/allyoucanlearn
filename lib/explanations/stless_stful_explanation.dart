const String explainStateless =
    'StatelessWidget (stless) is a widget that does not maintain any internal state.\n'
    'It is immutable, meaning that once it is built, it cannot change its properties or appearance.\n'
    'StatelessWidgets are ideal for UI elements that depend solely on the configuration passed to them,\n'
    'such as icons, text, or static layout components.\n\n';
const String explainStateful =
    'StatefulWidget (stful) is a widget that can maintain internal state that may change over time.\n'
    'It is mutable, meaning that it can update its appearance in response to user interactions, timers, or data changes.\n'
    'StatefulWidgets are used when the UI needs to react dynamically, such as forms, animations, or interactive components.\n\n';
const String explainUsage =
    'In Flutter, you usually create app screens by extending one of these two types of widgets.\n'
    'For static screens or components that do not change, extend StatelessWidget (stless).\n'
    'For screens or components that need to update dynamically, extend StatefulWidget (stful) and manage the state in a separate State class.\n\n';
const String statelessExample =
    'class MyStatelessWidget extends StatelessWidget {\n'
    '  @override\n'
    '  Widget build(BuildContext context) {\n'
    '    return const Placeholder();\n'
    '  }\n'
    '}';
const String statefulExample =
    'class MyStatefulWidget extends StatefulWidget {\n'
    '  @override\n'
    '  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();\n'
    '}\n\n'
    'class _MyStatefulWidgetState extends State<MyStatefulWidget> {\n'
    '  @override\n'
    '  Widget build(BuildContext context) {\n'
    '    return const Placeholder();\n'
    '  }\n'
    '}';
