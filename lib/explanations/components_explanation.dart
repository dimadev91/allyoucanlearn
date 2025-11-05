const String exImageAsset =
    'Image.asset(\'assets/image_name.png, \n'
    'width: 100,\n'
    'height: 100,\n'
    'scale: 0.5,\n'
    'etc.)';

// ignore: constant_identifier_names
const String exAudioCache =
    'Update the dependencies of YAML file \n'
    'ex. audioplayers: ^0.10.0 \n'
    '"import:" the package; \n\n'
    'final player = AudioCache();\n'
    'player.play("audio_name.mp3");';

// ignore: constant_identifier_names
const String exTextButton =
    'TextButton( onPressed() {\n'
    'print(\'Esempio di funzione\');\n'
    '},\n'
    'child: Text(\'Testo\'),\n'
    'style: TextButton.stylefrom()\n';

// ignore: constant_identifier_names
const String exCard =
    'Card ( \n'
    'color: Colors.white,\n'
    'elevation: 5,\n'
    'shape: RoundedRectangleBorder( \n'
    'borderRadius: BorderRadius.circular\n'
    '(10.0)), child: Column()), \n';

const String exGestureDetector =
    'Questo widget rileva il movimento su \n'
    'un qualsiasi widget figlio \n\n'
    'GestureDetector(\n'
    'onTap: () {\n'
    'print(\'Toccato!\');\n'
    '},\n'
    'onLongPress: () {\n'
    'print(\'Premuto a lungo!\');\n'
    '},\n'
    'child: Container(\n'
    'width: 100, height: 100,\n'
    'color: Colors.blue,\n'
    '),\n'
    ');';
const String exIcon =
    'Icon(\n'
    'Icons.home,\n'
    'color: Colors.white,\n'
    'size: 25.0,\n'
    ');';

const String exSingleChildScrollView =
    'SingleChildScrollView(\n'
    'scrollDirection: Axis.vertical,\n'
    'padding: EdgeInsets.all(10.0),\n'
    'child: Column(\n'
    'children: [\n'
    '// Molti Widget qui...\n'
    'Text(\'Contenuto Lungo\'),\n'
    '],\n'
    '),\n'
    ');';

const String exInteractiveViewer =
    'This widget enables users to pan, zoom, and rotate \n'
    'its child widget, making it ideal for displaying \n'
    'large content like images, maps, or charts.\n\n'
    'InteractiveViewer(\n'
    'maxScale: 4.0,\n'
    'minScale: 0.8,\n'
    'boundaryMargin: EdgeInsets.all(50),\n'
    'child: Image.asset(\n'
    '\'assets/mappa.png\'),\n'
    ');';

const String exTextField =
    "TextField(\n"
    "  // Main properties for control and interaction\n"
    "  controller: TextEditingController(),\n"
    "  onChanged: (String value) {\n"
    "  nameOfAVariable = value \n"
    "  },\n"
    "  onSubmitted: (String value) {\n"
    "    \n"
    "  },\n"
    "  focusNode: FocusNode(),\n"
    "\n"
    "  // Decoration properties (visual appearance)\n"
    "  decoration: InputDecoration(\n"
    "  filled:...,fillcolor;...\n"
    "hintText:...,hintStyle:...\n"
    "icon: Icon(),"
    "border: OutlineInputBorder(),bordSide:...\n"
    "  ),\n"
    "\n"
    "  // Text appearance properties\n"
    "  style: TextStyle(),\n"
    "  textAlign: TextAlign.start,\n"
    "\n"
    "  // Keyboard and behavior properties\n"
    "  keyboardType: TextInputType.text,\n"
    "  textInputAction: TextInputAction.done,\n"
    "  obscureText: false,\n"
    "  maxLines: 1,\n"
    "  maxLength: 20,\n"
    "  readOnly: false,\n"
    "  enabled: true,\n"
    ")";
