import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final List<String> options;
  final Function(int)
  onAnswerSelected; // Cambiato da Function(String) a Function(int)

  const AnswerButton({
    super.key,
    required this.options,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            onAnswerSelected(0); // Passa l'indice della risposta selezionata
          },
          child: Text(options[0]),
        ),
        ElevatedButton(
          onPressed: () {
            onAnswerSelected(1); // Passa l'indice della risposta selezionata
          },
          child: Text(options[1]),
        ),
        ElevatedButton(
          onPressed: () {
            onAnswerSelected(2); // Passa l'indice della risposta selezionata
          },
          child: Text(options[2]),
        ),
        ElevatedButton(
          onPressed: () {
            onAnswerSelected(3); // Passa l'indice della risposta selezionata
          },
          child: Text(options[3]),
        ),
      ],
    );
  }
}
