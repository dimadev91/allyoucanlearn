import 'package:flutter/material.dart';

final ThemeData kFlutterTheme = ThemeData(
  useMaterial3:
      true, // abilita il design Material 3 (nuovo stile di componenti e colori)
  colorSchemeSeed: const Color(
    0xFF6750A4,
  ), // colore principale da cui Flutter genera automaticamente una palette di colori coerente
  scaffoldBackgroundColor: const Color(
    0xFFF4FAFF,
  ), // colore di sfondo predefinito per tutte le Scaffold (pagine)

  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white, // colore delle icone nella AppBar
    ),
    // definisce lo stile predefinito per tutte le AppBar
    backgroundColor: Color(0xFF1FBCFD), // colore di sfondo della AppBar
    foregroundColor:
        Colors.black, // colore del testo e delle icone della AppBar
    elevation: 5,
    shadowColor: Color(
      0xFF645C5C,
    ), // ombra sotto la AppBar (più alto = ombra più visibile)
  ),

  bottomAppBarTheme: const BottomAppBarThemeData(
    color: Color(0xFF1FBCFD),
    elevation: 5,
    shadowColor: Color(0xFF645C5C),
    height: 50.0,
    // colore di sfondo della BottomAppBar
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.blue, // colore icona selezionata
    unselectedItemColor: Colors.grey, // colore icona non selezionata
    type: BottomNavigationBarType.fixed, // mantiene le icone sempre visibili
    // shadowColor non esiste direttamente per BottomNavigationBar,
    // l'elevation gestisce l'ombra
  ),
);

final ThemeData kPythonTheme = ThemeData(
  useMaterial3:
      true, // abilita il design Material 3 (nuovo stile di componenti e colori)
  colorSchemeSeed: const Color(
    0xFF6750A4,
  ), // colore principale da cui Flutter genera automaticamente una palette di colori coerente
  scaffoldBackgroundColor: const Color(
    0xFFE7E0CE,
  ), // colore di sfondo predefinito per tutte le Scaffold (pagine)

  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white, // colore delle icone nella AppBar
    ),
    // definisce lo stile predefinito per tutte le AppBar
    backgroundColor: Color(0xFFCDA817), // colore di sfondo della AppBar
    foregroundColor:
        Colors.black, // colore del testo e delle icone della AppBar
    elevation: 5,
    shadowColor: Color(
      0xFF4A461F,
    ), // ombra sotto la AppBar (più alto = ombra più visibile)
  ),

  bottomAppBarTheme: const BottomAppBarThemeData(
    color: Color(0xFFCDA817),
    elevation: 5,
    shadowColor: Color(0xFF4A461F),
    height: 50.0,
    // colore di sfondo della BottomAppBar
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.blue, // colore icona selezionata
    unselectedItemColor: Colors.grey, // colore icona non selezionata
    type: BottomNavigationBarType.fixed, // mantiene le icone sempre visibili
    // shadowColor non esiste direttamente per BottomNavigationBar,
    // l'elevation gestisce l'ombra
  ),
);
