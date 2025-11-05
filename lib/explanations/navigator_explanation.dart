const String exNavigatorPush =
    'Navigator.push is used to navigate to a new screen in Flutter.\n\n'
    'Each screen in Flutter is called a route, and when you navigate\n'
    'to a new screen, that route is pushed onto the navigation stack.\n'
    'This means the new screen appears on top of the previous one,\n'
    'while the previous screen stays in memory underneath.\n\n'
    'Example:\n'
    'Navigator.push(context, MaterialPageRoute(\n'
    '  builder: (context) => SecondPage(),\n'
    '));\n\n'
    'This line tells Flutter to build and display SecondPage\n'
    'as a new route on top of the current one.';

const String exNavigatorPop =
    'Navigator.pop is used to return to the previous screen in Flutter.\n\n'
    'When you call pop, the current route (screen) is removed from the stack,\n'
    'and the previous route becomes visible again.\n\n'
    'Example:\n'
    'Navigator.pop(context);\n\n'
    'This removes the current screen and shows the one below it.\n'
    'If a value is provided, it will be returned to the previous route.';

const String exNavigatorPassData =
    'Navigator can also be used to pass data between screens.\n\n'
    'You can send data forward when pushing a route:\n'
    'Navigator.push(context, MaterialPageRoute(\n'
    '  builder: (context) => SecondPage(username: "Nico"),\n'
    '));\n\n'
    'Inside SecondPage, you can receive the data through its constructor.\n\n'
    'To send data back when returning, use:\n'
    'Navigator.pop(context, "Hello from SecondPage");\n\n'
    'On the first page, you can await the result like this:\n'
    'final result = await Navigator.push(context, MaterialPageRoute(\n'
    '  builder: (context) => SecondPage(),\n'
    '));\n'
    'print(result); // Output: Hello from SecondPage\n\n'
    'This allows data to flow in both directions between routes —\n'
    'forward using constructor parameters and backward using pop results.';
