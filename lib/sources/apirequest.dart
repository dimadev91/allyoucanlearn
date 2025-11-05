import 'dart:convert';

import 'package:all_you_learn/sources/get_questions.dart';
import 'package:http/http.dart' as http;

class QuestionService {
  Future giveQuestion() async {
    final response = await http.get(
      Uri.parse(
        'https://raw.githubusercontent.com/dimadev91/domandequestioni/refs/heads/main/questions.json',
      ),
    );

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);

      return Quiz(jsonResponse);
    } else {
      throw Exception('Errore nel caricamento delle domande');
    }
  }
}

// prima prnede API fa la richiesta e controlla sia arrivata,
// poi genera l'istanza Quiz prendendola dal file Quiz vede la
// classe e cosa ritorna, quindi crea l'istanza quiz cono quelle
// caratteristiche e assegnando al this.myArray il valore di jsonResponse,
// ora per utilizzare le domande...... io devo usare i valori che
// tornando dall'istanza quiz che si trova dentro la funzione fetchQuestions,
// cioè quando uso quiz.getQuestion come metodo lo faccio perchè ritorna
// dalla classe QuestionService non dalla classe Quiz
