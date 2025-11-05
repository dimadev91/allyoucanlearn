import 'package:all_you_learn/constants/constants.dart';
import 'package:all_you_learn/sources/apirequest.dart';
import 'package:all_you_learn/sources/get_questions.dart';
import 'package:all_you_learn/theme/answer_button.dart';
import 'package:all_you_learn/theme/bottom_bar.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuestionService questionService = QuestionService();
  Quiz? quiz;
  bool isLoading = true; // Per gestire lo stato di caricamento
  String errorMessage = ''; // Per mostrare messaggi di errore

  // Variabili per tenere traccia delle risposte corrette e sbagliate
  int correctAnswers = 0;
  int incorrectAnswers = 0;

  @override
  void initState() {
    super.initState();
    _loadQuestions();
  }

  Future<void> _loadQuestions() async {
    try {
      quiz = await questionService.giveQuestion();
      if (quiz != null) {
        setState(() {
          isLoading = false; // Caricamento terminato
        });
      } else {
        throw 'Nessuna domanda disponibile.';
      }
    } catch (e) {
      setState(() {
        isLoading = false; // Caricamento terminato
        errorMessage = 'Errore nel caricamento delle domande: $e';
      });
    }
  }

  // Funzione per gestire la selezione della risposta
  void _handleAnswer(int selectedAnswerIndex) {
    // Controlla se la risposta selezionata è corretta
    if (selectedAnswerIndex == quiz!.getCorrectAnswerIndex()) {
      setState(() {
        correctAnswers++; // Incrementa le risposte corrette
      });
    } else {
      setState(() {
        incorrectAnswers++; // Incrementa le risposte sbagliate
      });
    }

    // Passa alla domanda successiva
    setState(() {
      quiz!.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('QUIZ', style: kTextTitle)),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator() // Mostra il caricamento
              : errorMessage.isNotEmpty
              ? Text(
                  errorMessage,
                  style: TextStyle(color: Colors.red),
                ) // Mostra il messaggio di errore
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(quiz!.getQuestion(), style: kTextIndex),
                    SizedBox(height: 30),
                    AnswerButton(
                      options: quiz!.getAnswers(),
                      onAnswerSelected:
                          _handleAnswer, // Passa la funzione al bottone
                    ),
                    SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Risposte corrette
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Icon(Icons.check, color: Colors.green),
                              SizedBox(height: 5),
                              Text(
                                '$correctAnswers',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Corrette', style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        ),
                        // Risposte sbagliate
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Icon(Icons.close, color: Colors.red),
                              SizedBox(height: 5),
                              Text(
                                '$incorrectAnswers',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Sbagliate', style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        ),
                      ],
                    ), // Row con i punteggi delle risposte corrette e sbagliate
                  ],
                ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomBar(
          icon: Icon(Icons.note_alt, color: Colors.white),
          icon1: Icon(Icons.home, color: Colors.white),
          icon2: Icon(Icons.question_answer, color: Color(0x9291E2FF)),
          onPression1: () {
            Navigator.pushNamed(context, '/flutter');
          },
          onPression: () {
            Navigator.pushNamed(context, '/2');
          },
        ),
      ),
    );
  }
}
