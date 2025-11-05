class Quiz {
  int index = 0;
  final List<dynamic> myArray;

  Quiz(this.myArray);

  String getQuestion() {
    return myArray[index]['question'];
  }

  // Funzione per ottenere l'indice della risposta corretta
  int getCorrectAnswerIndex() {
    return myArray[index]['correctIndex']; // 'correctIndex' è l'indice della risposta corretta nel JSON
  }

  List<String> getAnswers() {
    return List<String>.from(myArray[index]['options']);
  }

  String getCorrectAnswer() {
    return myArray[index]['options'][myArray[index]['correctIndex']];
  }

  void nextQuestion() {
    if (index < myArray.length - 1) {
      index++;
    } else {
      index = 0;
    }
  }
}
