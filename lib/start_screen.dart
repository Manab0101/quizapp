import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300,
          color: const Color.fromARGB(155, 255, 255, 255),
          ),
          const SizedBox(height: 75),
          const Text(
            'Learn Flutter The Fun Way!!',
            style: TextStyle(
              color: Color.fromARGB(255, 250, 251, 248),
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 35,),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 250, 247, 247)
          ),
          icon: const Icon(Icons.arrow_right_alt_outlined),
          label: const Text('Start Quiz'),
           ),
        ],
      ),
    );
  }
}

