const String exApiStep0 =
    'An Application Programming Interface (API) is a set \n'
    'of  commands, sources, protocols, objects, that\n'
    'programmers can use to create software or interact\n'
    'with an external system\n\n'
    'It provides developers with standard commands for\n'
    'perfoming common operations so they do not have to\n'
    'write the code from scratch.\n\n';

const String exApiStep1 =
    'STEP 1\n\n'
    'Update dependencies and import geolocator, from which\n'
    'we will get the getCurrentPosition() method.\n'
    'At this point we create a class "Location"\n'
    'and define its method to get the position and\n'
    'assign the values to its properties.\n'
    'This method is an ASYNC function since we have\n'
    'to wait for it to get the  data.\n\n';

const String exApiStep2 =
    'STEP 2: GET THE POSITION\n\n'
    'Now we can use this new class to create an object\n'
    'and use the method of the class.'
    'We will do it in a void function "getPosition()"\n'
    'that is also an ASYNC function.';

const String exApiStep3 =
    'STEP 3: PERMISSIONS\n\n'
    'Now we have to ask for the permission \n'
    'in the "AndroidManifest.xml". Also it\'s better'
    'to check if we got the permission using the method:\n'
    'Geolocator.checkPermission() and firstly,\n'
    'Geolocator.requestPermission()';

const String exApiStep4 =
    'STEP 4: FETCH THE DATA\n\n'
    'Use the "http" package, update dependencies, and import it.\n'
    'To fetch the data, we need to call its "get" method\n'
    'together with the URL inside the async void function "getData(url)".\n'
    'Since the get method doesn\'t accept a plain string URL, we need to\n'
    'create: var url = Uri.parse(\'URL\'), and then use this new\n'
    'url variable (which is now a URI) in the get method.\n\n'
    'STEP 4.1\n'
    'The data retrieved from the URL are stored in the "body".\n'
    'We can access them using the ".body" property.\n'
    'A successful request returns the status code 200.\n'
    'There is a universal convention for that — for example,\n'
    'codes starting with 4 (like 404) indicate errors.\n\n'
    'This "get" method may look unusual — we haven\'t\n'
    'created any classes. It comes from the "http" package,\n'
    'which provides several handy features.\n'
    'What\'s important is that we can make our code\n'
    'clearer by importing it as: import \'package:xyz/xyz.dart\' as xyz;\n'
    'and then use it like a method: xyz.get(...);\n\n';

const String exApiStep5 =
    'STEP 5: MAKE THE DATA AVAILABLE\n\n'
    'From the last step we get a string with key-value pairs\n'
    'that is what\'s called a json formatted API\'s response.\n'
    'Now to make the data available we have to import \n'
    'dart:convert.\n'
    'In the if function, where we checked the successful \n'
    'request, we can call the method jsondecode[key] and\n'
    'assign the fetched value to the variable we want.\n\n'
    'or we can first decode the data and assign it to a var\n'
    'so that we can now use the var instead of repeating\n'
    'the jsondecode method everytime.';

const String exApiStep6 =
    'STEP 6 — SEND THE REQUEST\n\n'
    'So far, we have been using a sample API URL.\n'
    'Now let\'s see how to send the required information\n'
    'in order to get a proper response.\n\n'
    'This API requires an ID key (which we get by signing up),\n'
    'as well as the latitude and longitude.\n'
    'So we create three variables that match the required parameters\n'
    'and reference them inside the URL using the syntax: \$variableName.\n\n'
    'We obtain the latitude and longitude from the getLocation()\n'
    'function, using the methods of the class we created earlier.\n'
    'Lastly, we call the getData() function inside our\n'
    'getLocation() async {} method so that it runs\n'
    'after we retrieve the current location.\n\n';

const String exApiStep7 =
    'STEP 7: REFRACTOR\n\n'
    'Now it\'s time to clean up our code \n'
    'The loading screen should be used only to\n'
    'handle the datas not for the undergoing logic\n'
    'flow.\n'
    'We\'re going to refractor in another file the\n'
    'request and the decodification of json.\n'
    'We will create a new class with a url property\n'
    'and an async method that return the decoded data.\n'
    'Now in the loading screen, we have our\n'
    'function getLocation(), that is the one that completes\n'
    'the url we must send for the request. In the work flow\n'
    'this function must run first. Then it will run the\n'
    'new method getData of the new class we created.\n\n'
    'Let\'s create the new class object and give \n'
    'the url to the constructor.\n'
    'Lastly, we assign the decoded data from the\n'
    'getData() method to a new var "weatherData"\n'
    'that we will use further on.';

const String exApiStep8 =
    'STEP 8: UPDATE THE UI\n\n'
    'To pass the weatherData to another class, we will\n'
    'assign it to its constructor. In other words we\n'
    'create a var in the destination class a initialize\n'
    'it, and then we call the class in the Navigator.push\n'
    'using that var.\n\n'
    'Let\'s now create a void function to updateUI().\n'
    'Here we\'re going to extract the informations like:\n'
    'temp= (weatherData[\'main\'[\'temp\'].\n\n'
    'Lastly we @override the initState in the state object\n'
    'and run the updateUI(){} function we just created in';

const String exApiStep9 =
    'STEP 9: REFRACTOR AGAIN\n\n'
    'Let\'s clear up our code again.'
    'We want to be able to recall our position even\n'
    'when it changes.\n'
    'First thing first we have to reposition our \n'
    'getLocationData() and we\'ll put it in the weather\n'
    'code. Also we need it to return the DATA. We mark\n'
    'it as Future<dynamic> and async.\n\n'
    'Now we can use it wherever we want to\n'
    'for example in a button, calling fetWeather()\n'
    'method from the WeatherModel() obj we already\n'
    'have in this class from previous steps.\n\n'
    'To prevent the app from crushing in the\n'
    'case it doesn\'t get the data, in the\n'
    'setState() we can use an "if" function\n'
    'to check == if it null then give for \n'
    'example default values.';

const String exApiStep10 = '';

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart'; // Importa per aprire URL
// import 'package:flutter/gestures.dart'; // Importa per TapGestureRecognizer
//
// // URI per il link che vogliamo aprire
// final Uri _url = Uri.parse('https://www.google.com');
//
// // Funzione asincrona per aprire l'URL nel browser
// Future<void> _launchUrl() async {
//   // Controlla se l'URL può essere lanciato
//   if (!await launchUrl(_url)) {
//     // Se non può essere lanciato, stampa un errore nella console
//     debugPrint('Impossibile lanciare $_url');
//     // In un'app reale, potresti mostrare una Snackbar o un AlertDialog all'utente
//   }
// }
//
// class LinkExampleScreen extends StatelessWidget {
//   const LinkExampleScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Link Cliccabile Flutter'),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // Usa RichText per combinare testo normale e testo cliccabile
//               RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                   style: const TextStyle(fontSize: 18.0, color: Colors.black),
//                   children: <TextSpan>[
//                     const TextSpan(
//                       text: 'Visita il motore di ricerca di ',
//                     ),
//                     // TextSpan per il link cliccabile
//                     TextSpan(
//                       text: 'Google',
//                       style: const TextStyle(
//                         color: Colors.blue,
//                         decoration: TextDecoration.underline, // Sottolinea per sembrare un link
//                         fontWeight: FontWeight.bold,
//                       ),
//                       // Usa un TapGestureRecognizer per rilevare il tocco
//                       recognizer: TapGestureRecognizer()
//                         ..onTap = () {
//                           _launchUrl();
//                         },
//                     ),
//                     const TextSpan(
//                       text: ' per maggiori informazioni.',
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 50),
//               // Istruzioni per l'utente (mostrate solo in console nell'ambiente standard)
//               Text(
//                 'NOTA: Per far funzionare questo codice, è necessario aggiungere la dipendenza '
//                     'url_launcher al file pubspec.yaml del tuo progetto Flutter.',
//                 style: TextStyle(fontSize: 14, color: Colors.red[800]),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // Classe Main per rendere il codice eseguibile nell'ambiente di Flutter
// // Normalmente questa sarebbe nel tuo file main.dart
// void main() {
//   // L'oggetto runApp avvia l'app Flutter con il widget LinkExampleScreen
//   runApp(const MaterialApp(home: LinkExampleScreen()));
// }
